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

abstract class RendezVous implements _i1.SerializableModel {
  RendezVous._({
    this.id,
    required this.seanceId,
    required this.titre,
    required this.contact,
    required this.dateRdv,
    required this.heure,
    required this.lieu,
    required this.statut,
  });

  factory RendezVous({
    int? id,
    required int seanceId,
    required String titre,
    required String contact,
    required DateTime dateRdv,
    required String heure,
    required String lieu,
    required String statut,
  }) = _RendezVousImpl;

  factory RendezVous.fromJson(Map<String, dynamic> jsonSerialization) {
    return RendezVous(
      id: jsonSerialization['id'] as int?,
      seanceId: jsonSerialization['seanceId'] as int,
      titre: jsonSerialization['titre'] as String,
      contact: jsonSerialization['contact'] as String,
      dateRdv: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateRdv']),
      heure: jsonSerialization['heure'] as String,
      lieu: jsonSerialization['lieu'] as String,
      statut: jsonSerialization['statut'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int seanceId;

  String titre;

  String contact;

  DateTime dateRdv;

  String heure;

  String lieu;

  String statut;

  /// Returns a shallow copy of this [RendezVous]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RendezVous copyWith({
    int? id,
    int? seanceId,
    String? titre,
    String? contact,
    DateTime? dateRdv,
    String? heure,
    String? lieu,
    String? statut,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RendezVous',
      if (id != null) 'id': id,
      'seanceId': seanceId,
      'titre': titre,
      'contact': contact,
      'dateRdv': dateRdv.toJson(),
      'heure': heure,
      'lieu': lieu,
      'statut': statut,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RendezVousImpl extends RendezVous {
  _RendezVousImpl({
    int? id,
    required int seanceId,
    required String titre,
    required String contact,
    required DateTime dateRdv,
    required String heure,
    required String lieu,
    required String statut,
  }) : super._(
         id: id,
         seanceId: seanceId,
         titre: titre,
         contact: contact,
         dateRdv: dateRdv,
         heure: heure,
         lieu: lieu,
         statut: statut,
       );

  /// Returns a shallow copy of this [RendezVous]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RendezVous copyWith({
    Object? id = _Undefined,
    int? seanceId,
    String? titre,
    String? contact,
    DateTime? dateRdv,
    String? heure,
    String? lieu,
    String? statut,
  }) {
    return RendezVous(
      id: id is int? ? id : this.id,
      seanceId: seanceId ?? this.seanceId,
      titre: titre ?? this.titre,
      contact: contact ?? this.contact,
      dateRdv: dateRdv ?? this.dateRdv,
      heure: heure ?? this.heure,
      lieu: lieu ?? this.lieu,
      statut: statut ?? this.statut,
    );
  }
}
