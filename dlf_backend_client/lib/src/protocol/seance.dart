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
import 'package:dlf_backend_client/src/protocol/protocol.dart' as _i2;

abstract class Seance implements _i1.SerializableModel {
  Seance._({
    this.id,
    required this.nom,
    this.motifs,
    this.typeSeance,
    this.cible,
    this.zone,
    this.ville,
    this.quartier,
    required this.objectifParticipants,
    required this.organisateur,
    this.presentateur,
    this.assistants,
    required this.datePrevue,
    this.heureDebut,
    this.heureFin,
    required this.estTerminee,
    required this.gadgetsPrevus,
    required this.gadgetsDistribues,
    required this.totalLogistique,
    this.nbParticipantsEstime,
    required this.evaluation,
  });

  factory Seance({
    int? id,
    required String nom,
    String? motifs,
    String? typeSeance,
    String? cible,
    String? zone,
    String? ville,
    String? quartier,
    required int objectifParticipants,
    required String organisateur,
    String? presentateur,
    List<String>? assistants,
    required DateTime datePrevue,
    String? heureDebut,
    String? heureFin,
    required bool estTerminee,
    required int gadgetsPrevus,
    required int gadgetsDistribues,
    required double totalLogistique,
    int? nbParticipantsEstime,
    required bool evaluation,
  }) = _SeanceImpl;

  factory Seance.fromJson(Map<String, dynamic> jsonSerialization) {
    return Seance(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      motifs: jsonSerialization['motifs'] as String?,
      typeSeance: jsonSerialization['typeSeance'] as String?,
      cible: jsonSerialization['cible'] as String?,
      zone: jsonSerialization['zone'] as String?,
      ville: jsonSerialization['ville'] as String?,
      quartier: jsonSerialization['quartier'] as String?,
      objectifParticipants: jsonSerialization['objectifParticipants'] as int,
      organisateur: jsonSerialization['organisateur'] as String,
      presentateur: jsonSerialization['presentateur'] as String?,
      assistants: jsonSerialization['assistants'] == null
          ? null
          : _i2.Protocol().deserialize<List<String>>(
              jsonSerialization['assistants'],
            ),
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
      nbParticipantsEstime: jsonSerialization['nbParticipantsEstime'] as int?,
      evaluation: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['evaluation'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String? motifs;

  String? typeSeance;

  String? cible;

  String? zone;

  String? ville;

  String? quartier;

  int objectifParticipants;

  String organisateur;

  String? presentateur;

  List<String>? assistants;

  DateTime datePrevue;

  String? heureDebut;

  String? heureFin;

  bool estTerminee;

  int gadgetsPrevus;

  int gadgetsDistribues;

  double totalLogistique;

  int? nbParticipantsEstime;

  bool evaluation;

  /// Returns a shallow copy of this [Seance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Seance copyWith({
    int? id,
    String? nom,
    String? motifs,
    String? typeSeance,
    String? cible,
    String? zone,
    String? ville,
    String? quartier,
    int? objectifParticipants,
    String? organisateur,
    String? presentateur,
    List<String>? assistants,
    DateTime? datePrevue,
    String? heureDebut,
    String? heureFin,
    bool? estTerminee,
    int? gadgetsPrevus,
    int? gadgetsDistribues,
    double? totalLogistique,
    int? nbParticipantsEstime,
    bool? evaluation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Seance',
      if (id != null) 'id': id,
      'nom': nom,
      if (motifs != null) 'motifs': motifs,
      if (typeSeance != null) 'typeSeance': typeSeance,
      if (cible != null) 'cible': cible,
      if (zone != null) 'zone': zone,
      if (ville != null) 'ville': ville,
      if (quartier != null) 'quartier': quartier,
      'objectifParticipants': objectifParticipants,
      'organisateur': organisateur,
      if (presentateur != null) 'presentateur': presentateur,
      if (assistants != null) 'assistants': assistants?.toJson(),
      'datePrevue': datePrevue.toJson(),
      if (heureDebut != null) 'heureDebut': heureDebut,
      if (heureFin != null) 'heureFin': heureFin,
      'estTerminee': estTerminee,
      'gadgetsPrevus': gadgetsPrevus,
      'gadgetsDistribues': gadgetsDistribues,
      'totalLogistique': totalLogistique,
      if (nbParticipantsEstime != null)
        'nbParticipantsEstime': nbParticipantsEstime,
      'evaluation': evaluation,
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
    String? motifs,
    String? typeSeance,
    String? cible,
    String? zone,
    String? ville,
    String? quartier,
    required int objectifParticipants,
    required String organisateur,
    String? presentateur,
    List<String>? assistants,
    required DateTime datePrevue,
    String? heureDebut,
    String? heureFin,
    required bool estTerminee,
    required int gadgetsPrevus,
    required int gadgetsDistribues,
    required double totalLogistique,
    int? nbParticipantsEstime,
    required bool evaluation,
  }) : super._(
         id: id,
         nom: nom,
         motifs: motifs,
         typeSeance: typeSeance,
         cible: cible,
         zone: zone,
         ville: ville,
         quartier: quartier,
         objectifParticipants: objectifParticipants,
         organisateur: organisateur,
         presentateur: presentateur,
         assistants: assistants,
         datePrevue: datePrevue,
         heureDebut: heureDebut,
         heureFin: heureFin,
         estTerminee: estTerminee,
         gadgetsPrevus: gadgetsPrevus,
         gadgetsDistribues: gadgetsDistribues,
         totalLogistique: totalLogistique,
         nbParticipantsEstime: nbParticipantsEstime,
         evaluation: evaluation,
       );

  /// Returns a shallow copy of this [Seance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Seance copyWith({
    Object? id = _Undefined,
    String? nom,
    Object? motifs = _Undefined,
    Object? typeSeance = _Undefined,
    Object? cible = _Undefined,
    Object? zone = _Undefined,
    Object? ville = _Undefined,
    Object? quartier = _Undefined,
    int? objectifParticipants,
    String? organisateur,
    Object? presentateur = _Undefined,
    Object? assistants = _Undefined,
    DateTime? datePrevue,
    Object? heureDebut = _Undefined,
    Object? heureFin = _Undefined,
    bool? estTerminee,
    int? gadgetsPrevus,
    int? gadgetsDistribues,
    double? totalLogistique,
    Object? nbParticipantsEstime = _Undefined,
    bool? evaluation,
  }) {
    return Seance(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      motifs: motifs is String? ? motifs : this.motifs,
      typeSeance: typeSeance is String? ? typeSeance : this.typeSeance,
      cible: cible is String? ? cible : this.cible,
      zone: zone is String? ? zone : this.zone,
      ville: ville is String? ? ville : this.ville,
      quartier: quartier is String? ? quartier : this.quartier,
      objectifParticipants: objectifParticipants ?? this.objectifParticipants,
      organisateur: organisateur ?? this.organisateur,
      presentateur: presentateur is String? ? presentateur : this.presentateur,
      assistants: assistants is List<String>?
          ? assistants
          : this.assistants?.map((e0) => e0).toList(),
      datePrevue: datePrevue ?? this.datePrevue,
      heureDebut: heureDebut is String? ? heureDebut : this.heureDebut,
      heureFin: heureFin is String? ? heureFin : this.heureFin,
      estTerminee: estTerminee ?? this.estTerminee,
      gadgetsPrevus: gadgetsPrevus ?? this.gadgetsPrevus,
      gadgetsDistribues: gadgetsDistribues ?? this.gadgetsDistribues,
      totalLogistique: totalLogistique ?? this.totalLogistique,
      nbParticipantsEstime: nbParticipantsEstime is int?
          ? nbParticipantsEstime
          : this.nbParticipantsEstime,
      evaluation: evaluation ?? this.evaluation,
    );
  }
}
