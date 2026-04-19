import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ParticipantEndpoint extends Endpoint {
  Future<Participant> addParticipant(
    Session session,
    Participant participant,
  ) async {
    return await Participant.db.insertRow(session, participant);
  }

  Future<List<Participant>> getParticipantsBySeance(
    Session session,
    int seanceId,
  ) async {
    return await Participant.db.find(
      session,
      where: (t) => t.seanceId.equals(seanceId),
    );
  }

  Future<List<Participant>> getAllParticipants(Session session) async {
    return await Participant.db.find(
      session,
      orderBy: (t) => t.id,
      orderDescending: true,
    );
  }

  // 1. Supprimer un participant en toute sécurité
  Future<void> deleteParticipant(Session session, int id) async {
    final participant = await Participant.db.findById(session, id);

    // On vérifie que le participant existe bien en base avant de le supprimer
    if (participant != null) {
      await Participant.db.deleteRow(session, participant);
      session.log(
        '✅ Participant $id supprimé avec succès.',
        level: LogLevel.info,
      );
    } else {
      // Si on arrive ici, c'est qu'il est déjà supprimé ou introuvable.
      // On ne fait pas crasher le serveur.
      session.log(
        '⚠️ Tentative de suppression ignorée : Participant $id introuvable.',
        level: LogLevel.warning,
      );
    }
  }

  // 2. Modifier un participant
  Future<Participant> updateParticipant(
    Session session,
    Participant participant,
  ) async {
    return await Participant.db.updateRow(session, participant);
  }
}
