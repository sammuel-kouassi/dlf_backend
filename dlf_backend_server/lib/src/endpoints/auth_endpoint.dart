import 'package:serverpod/serverpod.dart';
import 'package:bcrypt/bcrypt.dart';
import '../generated/protocol.dart';

class AuthEndpoint extends Endpoint {
  Future<Utilisateur?> login(
    Session session,
    String email,
    String password,
  ) async {
    try {
      // 1. Recherche de l'utilisateur par email
      final user = await Utilisateur.db.findFirstRow(
        session,
        where: (t) => t.email.equals(email),
      );

      if (user == null) {
        session.log(
          '❌ Login échoué : aucun utilisateur trouvé pour $email',
          level: LogLevel.warning,
        );
        return null;
      }

      // 2. Vérification que le hash est non-null et non-vide
      final storedHash = user.motDePasse;
      if (storedHash.isEmpty) {
        session.log(
          '❌ Login échoué : motDePasse vide pour $email',
          level: LogLevel.warning,
        );
        return null;
      }

      // 3. Vérification BCrypt (compatible avec Spring BCryptPasswordEncoder)
      bool isValid = false;
      try {
        isValid = BCrypt.checkpw(password, storedHash);
      } catch (bcryptError) {
        session.log(
          '❌ Erreur BCrypt pour $email : $bcryptError\n'
          'Hash stocké : ${storedHash.substring(0, 10)}...',
          level: LogLevel.error,
        );
        return null;
      }

      if (isValid) {
        session.log(
          '✅ Login réussi pour $email (rôle: ${user.role})',
          level: LogLevel.info,
        );
        return user;
      } else {
        session.log(
          '❌ Mot de passe incorrect pour $email',
          level: LogLevel.warning,
        );
        return null;
      }
    } catch (e, stackTrace) {
      session.log(
        '❌ Erreur inattendue login($email) : $e\n$stackTrace',
        level: LogLevel.error,
      );
      return null;
    }
  }

  Future<bool> updateUser(Session session, Utilisateur user) async {
    try {
      final existingUser = await Utilisateur.db.findFirstRow(
        session,
        where: (t) => t.email.equals(user.email),
      );

      if (existingUser != null) {
        final toUpdate = existingUser.copyWith(
          nom: user.nom,
          role: user.role,
          // ⚠️ Ne jamais écraser motDePasse ici
        );
        await Utilisateur.db.updateRow(session, toUpdate);
        session.log(
          '✅ Profil mis à jour pour ${user.email}',
          level: LogLevel.info,
        );
        return true;
      }
      session.log(
        '❌ updateUser : utilisateur introuvable ${user.email}',
        level: LogLevel.warning,
      );
      return false;
    } catch (e) {
      session.log('❌ Erreur Backend updateUser: $e', level: LogLevel.error);
      return false;
    }
  }
}
