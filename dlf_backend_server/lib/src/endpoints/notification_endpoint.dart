import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class NotificationEndpoint extends Endpoint {
  Future<List<Notification>> getMobileNotifications(Session session) async {
    return await Notification.db.find(
      session,
      where: (t) => t.cible.equals('mobile') | t.cible.equals('tous'),
      orderBy: (t) => t.createdAt,
      orderDescending: true,
      limit: 50,
    );
  }

  /// Récupère uniquement les notifications non lues pour le mobile.
  Future<List<Notification>> getUnreadMobileNotifications(
    Session session,
  ) async {
    return await Notification.db.find(
      session,
      where: (t) =>
          (t.cible.equals('mobile') | t.cible.equals('tous')) &
          t.isRead.equals(false),
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }

  /// Marque une notification comme lue.
  Future<bool> markAsRead(Session session, int notificationId) async {
    try {
      final notif = await Notification.db.findById(session, notificationId);
      if (notif == null) return false;
      await Notification.db.updateRow(
        session,
        notif.copyWith(isRead: true),
      );
      return true;
    } catch (e) {
      print('❌ Erreur markAsRead : $e');
      return false;
    }
  }

  /// Marque toutes les notifications mobiles comme lues.
  Future<void> markAllMobileAsRead(Session session) async {
    final notifs = await Notification.db.find(
      session,
      where: (t) =>
          (t.cible.equals('mobile') | t.cible.equals('tous')) &
          t.isRead.equals(false),
    );
    for (final n in notifs) {
      await Notification.db.updateRow(session, n.copyWith(isRead: true));
    }
  }

  /// Crée une notification depuis le mobile (ex: nouveau RDV pris sur mobile).
  /// Elle sera visible côté web.
  Future<Notification> createFromMobile(
    Session session, {
    required String titre,
    required String corps,
    required String type,
    int? entityId,
  }) async {
    return await Notification.db.insertRow(
      session,
      Notification(
        titre: titre,
        corps: corps,
        type: type,
        source: 'mobile',
        cible: 'web',
        entityId: entityId,
        isRead: false,
        createdAt: DateTime.now().toUtc(),
      ),
    );
  }
}
