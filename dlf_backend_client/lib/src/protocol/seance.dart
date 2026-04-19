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

abstract class Seance implements _i1.SerializableModel {
  Seance._({
    this.id,
    required this.nom,
    this.objectifs,
    required this.zone,
    required this.objectifParticipants,
    required this.organisateur,
    required this.datePrevue,
    this.heureDebut,
    this.heureFin,
    required this.estTerminee,
    required this.gadgetsPrevus,
    required this.gadgetsDistribues,
    required this.totalLogistique,
  });

  factory Seance({
    int? id,
    required String nom,
    String? objectifs,
    required String zone,
    required int objectifParticipants,
    required String organisateur,
    required DateTime datePrevue,
    String? heureDebut,
    String? heureFin,
    required bool estTerminee,
    required int gadgetsPrevus,
    required int gadgetsDistribues,
    required double totalLogistique,
  }) = _SeanceImpl;

  factory Seance.fromJson(Map<String, dynamic> jsonSerialization) {
    return Seance(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      objectifs: jsonSerialization['objectifs'] as String?,
      zone: jsonSerialization['zone'] as String,
      objectifParticipants: jsonSerialization['objectifParticipants'] as int,
      organisateur: jsonSerialization['organisateur'] as String,
      datePrevue: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['datePrevue'],
      ),
      heureDebut: jsonSerialization['heureDebut'] as String?,
      heureFin: jsonSerialization['heureFin'] as String?,
      estTerminee: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['estTerminee'],
      ),
      gadgetsPrevus: jsonSerialization['gadgetsPrevus'] as int,
      gadgetsDistribues: jsonSerialization['gadgetsDistribues'] as int,
      totalLogistique: (jsonSerialization['totalLogistique'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String? objectifs;

  String zone;

  int objectifParticipants;

  String organisateur;

  DateTime datePrevue;

  String? heureDebut;

  String? heureFin;

  bool estTerminee;

  int gadgetsPrevus;

  int gadgetsDistribues;

  double totalLogistique;

  /// Returns a shallow copy of this [Seance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Seance copyWith({
    int? id,
    String? nom,
    String? objectifs,
    String? zone,
    int? objectifParticipants,
    String? organisateur,
    DateTime? datePrevue,
    String? heureDebut,
    String? heureFin,
    bool? estTerminee,
    int? gadgetsPrevus,
    int? gadgetsDistribues,
    double? totalLogistique,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Seance',
      if (id != null) 'id': id,
      'nom': nom,
      if (objectifs != null) 'objectifs': objectifs,
      'zone': zone,
      'objectifParticipants': objectifParticipants,
      'organisateur': organisateur,
      'datePrevue': datePrevue.toJson(),
      if (heureDebut != null) 'heureDebut': heureDebut,
      if (heureFin != null) 'heureFin': heureFin,
      'estTerminee': estTerminee,
      'gadgetsPrevus': gadgetsPrevus,
      'gadgetsDistribues': gadgetsDistribues,
      'totalLogistique': totalLogistique,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SeanceImpl extends Seance {
  _SeanceImpl({
    int? id,
    required String nom,
    String? objectifs,
    required String zone,
    required int objectifParticipants,
    required String organisateur,
    required DateTime datePrevue,
    String? heureDebut,
    String? heureFin,
    required bool estTerminee,
    required int gadgetsPrevus,
    required int gadgetsDistribues,
    required double totalLogistique,
  }) : super._(
         id: id,
         nom: nom,
         objectifs: objectifs,
         zone: zone,
         objectifParticipants: objectifParticipants,
         organisateur: organisateur,
         datePrevue: datePrevue,
         heureDebut: heureDebut,
         heureFin: heureFin,
         estTerminee: estTerminee,
         gadgetsPrevus: gadgetsPrevus,
         gadgetsDistribues: gadgetsDistribues,
         totalLogistique: totalLogistique,
       );

  /// Returns a shallow copy of this [Seance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Seance copyWith({
    Object? id = _Undefined,
    String? nom,
    Object? objectifs = _Undefined,
    String? zone,
    int? objectifParticipants,
    String? organisateur,
    DateTime? datePrevue,
    Object? heureDebut = _Undefined,
    Object? heureFin = _Undefined,
    bool? estTerminee,
    int? gadgetsPrevus,
    int? gadgetsDistribues,
    double? totalLogistique,
  }) {
    return Seance(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      objectifs: objectifs is String? ? objectifs : this.objectifs,
      zone: zone ?? this.zone,
      objectifParticipants: objectifParticipants ?? this.objectifParticipants,
      organisateur: organisateur ?? this.organisateur,
      datePrevue: datePrevue ?? this.datePrevue,
      heureDebut: heureDebut is String? ? heureDebut : this.heureDebut,
      heureFin: heureFin is String? ? heureFin : this.heureFin,
      estTerminee: estTerminee ?? this.estTerminee,
      gadgetsPrevus: gadgetsPrevus ?? this.gadgetsPrevus,
      gadgetsDistribues: gadgetsDistribues ?? this.gadgetsDistribues,
      totalLogistique: totalLogistique ?? this.totalLogistique,
    );
  }
}
