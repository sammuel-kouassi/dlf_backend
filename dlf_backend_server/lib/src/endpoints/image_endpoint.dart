import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ImageEndpoint extends Endpoint {
  // Ajouter une image
  Future<Image> addImage(Session session, Image image) async {
    return await Image.db.insertRow(session, image);
  }

  // Récupérer les images d'une séance
  Future<List<Image>> getImagesBySeance(Session session, int seanceId) async {
    return await Image.db.find(
      session,
      where: (t) => t.seanceId.equals(seanceId),
    );
  }

  // Supprimer une image
  Future<void> deleteImage(Session session, int imageId) async {
    final image = await Image.db.findById(session, imageId);
    if (image != null) {
      await Image.db.deleteRow(session, image);
    }
  }
}
