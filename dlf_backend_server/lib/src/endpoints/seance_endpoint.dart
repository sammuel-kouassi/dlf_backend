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
}
