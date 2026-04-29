import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class SeanceEndpoint extends Endpoint {
  // Récupérer toutes les séances pour le mobile
  Future<List<Seance>> getAllSeances(Session session) async {
    return await Seance.db.find(session);
  }

  // Mettre à jour une séance (quand on a distribué des gadgets)
  Future<Seance> updateSeance(Session session, Seance seance) async {
    return await Seance.db.updateRow(session, seance);
  }

  Future<Seance> cloreSeance(
    Session session,
    int seanceId,
    int nbParticipantsEstime,
  ) async {
    final seance = await Seance.db.findById(session, seanceId);
    if (seance == null) throw Exception('Séance introuvable');

    final updated = seance.copyWith(
      estTerminee: true,
      evaluation: true,
      nbParticipantsEstime: nbParticipantsEstime,
    );
    return await Seance.db.updateRow(session, updated);
  }

  // Générer une URL d'upload signée (si tu utilises le storage Serverpod)
  Future<String?> getUploadUrl(Session session, String fileName) async {
    return await session.storage.createDirectFileUploadDescription(
      storageId: 'public',
      path: 'seance_images/$fileName',
    );
  }
}
