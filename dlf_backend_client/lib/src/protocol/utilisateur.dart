/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Utilisateur implements _i1.SerializableModel {
  Utilisateur._({
    this.id,
    required this.nom,
    required this.email,
    required this.motDePasse,
    required this.role,
  });

  factory Utilisateur({
    int? id,
    required String nom,
    required String email,
    required String motDePasse,
    required String role,
  }) = _UtilisateurImpl;

  factory Utilisateur.fromJson(Map<String, dynamic> jsonSerialization) {
    return Utilisateur(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      email: jsonSerialization['email'] as String,
      motDePasse: jsonSerialization['motDePasse'] as String,
      role: jsonSerialization['role'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String email;

  String motDePasse;

  String role;

  /// Returns a shallow copy of this [Utilisateur]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Utilisateur copyWith({
    int? id,
    String? nom,
    String? email,
    String? motDePasse,
    String? role,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Utilisateur',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      'motDePasse': motDePasse,
      'role': role,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UtilisateurImpl extends Utilisateur {
  _UtilisateurImpl({
    int? id,
    required String nom,
    required String email,
    required String motDePasse,
    required String role,
  }) : super._(
         id: id,
         nom: nom,
         email: email,
         motDePasse: motDePasse,
         role: role,
       );

  /// Returns a shallow copy of this [Utilisateur]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Utilisateur copyWith({
    Object? id = _Undefined,
    String? nom,
    String? email,
    String? motDePasse,
    String? role,
  }) {
    return Utilisateur(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      email: email ?? this.email,
      motDePasse: motDePasse ?? this.motDePasse,
      role: role ?? this.role,
    );
  }
}
