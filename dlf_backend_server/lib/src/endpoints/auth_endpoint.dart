import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class AuthEndpoint extends Endpoint {
  // Connexion
  Future<Utilisateur?> login(
    Session session,
    String email,
    String password,
  ) async {
    final user = await Utilisateur.db.findFirstRow(
      session,
      where: (t) => t.email.equals(email),
    );

    if (user == null) return null;

    // En production : utilisez BCrypt pour comparer les hashs !
    if (user.motDePasse == password) {
      return user;
    }
    return null;
  }

  // ✅ AJOUT : Mise à jour du profil
  Future<bool> updateUser(Session session, Utilisateur user) async {
    try {
      // On cherche l'utilisateur par son email (qui est unique)
      final existingUser = await Utilisateur.db.findFirstRow(
        session,
        where: (t) => t.email.equals(user.email),
      );

      if (existingUser != null) {
        // On met à jour les champs (nom et role)
        final toUpdate = existingUser.copyWith(
          nom: user.nom,
          role: user.role,
        );
        await Utilisateur.db.updateRow(session, toUpdate);
        return true;
      }
      return false;
    } catch (e) {
      print('❌ Erreur Backend updateUser: $e');
      return false;
    }
  }
}
