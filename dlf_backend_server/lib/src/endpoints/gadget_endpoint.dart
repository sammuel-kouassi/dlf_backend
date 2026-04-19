import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class GadgetEndpoint extends Endpoint {
  Future<List<Gadget>> getAllGadgets(Session session) async =>
      await Gadget.db.find(
        session,
        orderBy: (t) => t.id,
      );

  Future<Gadget> updateGadget(Session session, Gadget gadget) async =>
      await Gadget.db.updateRow(session, gadget);
}
