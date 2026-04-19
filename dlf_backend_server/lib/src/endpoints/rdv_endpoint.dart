import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class RdvEndpoint extends Endpoint {
  Future<RendezVous> addRdv(Session session, RendezVous rdv) async =>
      await RendezVous.db.insertRow(session, rdv);

  Future<List<RendezVous>> getAllRdvs(Session session) async => await RendezVous
      .db
      .find(session, orderBy: (t) => t.id, orderDescending: true);

  Future<RendezVous> updateRdv(Session session, RendezVous rdv) async =>
      await RendezVous.db.updateRow(session, rdv);

  // --- SUPPRESSION SÉCURISÉE RDV ---
  Future<void> deleteRdv(Session session, int id) async {
    // 1. Recherche du rendez-vous
    final rdv = await RendezVous.db.findById(session, id);

    // 2. Vérification de nullité
    if (rdv != null) {
      await RendezVous.db.deleteRow(session, rdv);
      print('✅ RDV $id supprimé sur le serveur.');
    } else {
      print('⚠️ RDV $id introuvable ou déjà supprimé.');
    }
  }
}
