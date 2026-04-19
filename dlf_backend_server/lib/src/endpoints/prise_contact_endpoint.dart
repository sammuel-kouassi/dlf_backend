import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PriseContactEndpoint extends Endpoint {
  // 1. Ajouter
  Future<PriseContact> addPriseContact(
    Session session,
    PriseContact priseContact,
  ) async {
    return await PriseContact.db.insertRow(session, priseContact);
  }

  // 2. Récupérer tout
  Future<List<PriseContact>> getAllPriseContacts(Session session) async {
    return await PriseContact.db.find(
      session,
      orderBy: (t) => t.id,
      orderDescending: true, // Les plus récents en premier
    );
  }

  // 3. Modifier
  Future<PriseContact> updatePriseContact(
    Session session,
    PriseContact priseContact,
  ) async {
    return await PriseContact.db.updateRow(session, priseContact);
  }

  // --- SUPPRESSION SÉCURISÉE PRISE DE CONTACT ---
  Future<void> deletePriseContact(Session session, int id) async {
    // 1. On cherche l'objet
    final contact = await PriseContact.db.findById(session, id);

    // 2. On ne supprime que s'il existe vraiment
    if (contact != null) {
      await PriseContact.db.deleteRow(session, contact);
      print('✅ PriseContact $id supprimée sur le serveur.');
    } else {
      // Si déjà supprimé, on ne fait rien (évite l'erreur 500)
      print('⚠️ PriseContact $id déjà absente du serveur.');
    }
  }
}
