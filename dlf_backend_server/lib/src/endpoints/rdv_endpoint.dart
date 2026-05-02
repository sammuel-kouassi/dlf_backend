import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class RdvEndpoint extends Endpoint {
  Future<RendezVous> addRdv(Session session, RendezVous rdv) async {
    // 1. Créer le RDV
    final created = await RendezVous.db.insertRow(session, rdv);

    // 2. Notifier le web qu'un nouveau RDV a été pris depuis le mobile
    try {
      final dateStr = rdv.dateRdv != null
          ? '${rdv.dateRdv!.day.toString().padLeft(2, '0')}/'
                '${rdv.dateRdv!.month.toString().padLeft(2, '0')}/'
                '${rdv.dateRdv!.year} à ${rdv.heure}'
          : rdv.heure ?? '';

      await Notification.db.insertRow(
        session,
        Notification(
          titre: 'Nouveau RDV — ${rdv.titre}',
          corps: 'Contact : ${rdv.contact} · $dateStr',
          type: 'rdv',
          source: 'mobile',
          cible: 'web',
          entityId: created.id,
          isRead: false,
          createdAt: DateTime.now().toUtc(),
        ),
      );
    } catch (e) {
      // Ne pas bloquer la création du RDV si la notif échoue
      print('⚠️ Notification création RDV échouée : $e');
    }

    return created;
  }

  Future<List<RendezVous>> getAllRdvs(Session session) async =>
      await RendezVous.db.find(
        session,
        orderBy: (t) => t.id,
        orderDescending: true,
      );

  Future<RendezVous> updateRdv(Session session, RendezVous rdv) async =>
      await RendezVous.db.updateRow(session, rdv);

  Future<void> deleteRdv(Session session, int id) async {
    final rdv = await RendezVous.db.findById(session, id);
    if (rdv != null) {
      await RendezVous.db.deleteRow(session, rdv);
      print('✅ RDV $id supprimé sur le serveur.');
    } else {
      print('⚠️ RDV $id introuvable ou déjà supprimé.');
    }
  }
}
