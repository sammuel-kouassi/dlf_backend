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

abstract class Gadget implements _i1.SerializableModel {
  Gadget._({
    this.id,
    required this.nom,
    required this.categorie,
    required this.stockInitial,
    required this.distribues,
  });

  factory Gadget({
    int? id,
    required String nom,
    required String categorie,
    required int stockInitial,
    required int distribues,
  }) = _GadgetImpl;

  factory Gadget.fromJson(Map<String, dynamic> jsonSerialization) {
    return Gadget(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      categorie: jsonSerialization['categorie'] as String,
      stockInitial: jsonSerialization['stockInitial'] as int,
      distribues: jsonSerialization['distribues'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String categorie;

  int stockInitial;

  int distribues;

  /// Returns a shallow copy of this [Gadget]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Gadget copyWith({
    int? id,
    String? nom,
    String? categorie,
    int? stockInitial,
    int? distribues,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Gadget',
      if (id != null) 'id': id,
      'nom': nom,
      'categorie': categorie,
      'stockInitial': stockInitial,
      'distribues': distribues,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GadgetImpl extends Gadget {
  _GadgetImpl({
    int? id,
    required String nom,
    required String categorie,
    required int stockInitial,
    required int distribues,
  }) : super._(
         id: id,
         nom: nom,
         categorie: categorie,
         stockInitial: stockInitial,
         distribues: distribues,
       );

  /// Returns a shallow copy of this [Gadget]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Gadget copyWith({
    Object? id = _Undefined,
    String? nom,
    String? categorie,
    int? stockInitial,
    int? distribues,
  }) {
    return Gadget(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      categorie: categorie ?? this.categorie,
      stockInitial: stockInitial ?? this.stockInitial,
      distribues: distribues ?? this.distribues,
    );
  }
}
