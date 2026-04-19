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

abstract class Participant implements _i1.SerializableModel {
  Participant._({
    this.id,
    required this.seanceId,
    required this.nom,
    required this.prenom,
    required this.telephone,
    this.profession,
    required this.statutLogement,
    this.lieu,
    required this.localite,
    this.quartier,
    required this.besoinsExprimes,
    this.ressenti,
    required this.consentement,
    required this.statut,
    required this.dateInscription,
  });

  factory Participant({
    int? id,
    required int seanceId,
    required String nom,
    required String prenom,
    required String telephone,
    String? profession,
    required String statutLogement,
    String? lieu,
    required String localite,
    String? quartier,
    required List<String> besoinsExprimes,
    String? ressenti,
    required bool consentement,
    required String statut,
    required DateTime dateInscription,
  }) = _ParticipantImpl;

  factory Participant.fromJson(Map<String, dynamic> jsonSerialization) {
    return Participant(
      id: jsonSerialization['id'] as int?,
      seanceId: jsonSerialization['seanceId'] as int,
      nom: jsonSerialization['nom'] as String,
      prenom: jsonSerialization['prenom'] as String,
      telephone: jsonSerialization['telephone'] as String,
      profession: jsonSerialization['profession'] as String?,
      statutLogement: jsonSerialization['statutLogement'] as String,
      lieu: jsonSerialization['lieu'] as String?,
      localite: jsonSerialization['localite'] as String,
      quartier: jsonSerialization['quartier'] as String?,
      besoinsExprimes: _i2.Protocol().deserialize<List<String>>(
        jsonSerialization['besoinsExprimes'],
      ),
      ressenti: jsonSerialization['ressenti'] as String?,
      consentement: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['consentement'],
      ),
      statut: jsonSerialization['statut'] as String,
      dateInscription: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['dateInscription'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int seanceId;

  String nom;

  String prenom;

  String telephone;

  String? profession;

  String statutLogement;

  String? lieu;

  String localite;

  String? quartier;

  List<String> besoinsExprimes;

  String? ressenti;

  bool consentement;

  String statut;

  DateTime dateInscription;

  /// Returns a shallow copy of this [Participant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Participant copyWith({
    int? id,
    int? seanceId,
    String? nom,
    String? prenom,
    String? telephone,
    String? profession,
    String? statutLogement,
    String? lieu,
    String? localite,
    String? quartier,
    List<String>? besoinsExprimes,
    String? ressenti,
    bool? consentement,
    String? statut,
    DateTime? dateInscription,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Participant',
      if (id != null) 'id': id,
      'seanceId': seanceId,
      'nom': nom,
      'prenom': prenom,
      'telephone': telephone,
      if (profession != null) 'profession': profession,
      'statutLogement': statutLogement,
      if (lieu != null) 'lieu': lieu,
      'localite': localite,
      if (quartier != null) 'quartier': quartier,
      'besoinsExprimes': besoinsExprimes.toJson(),
      if (ressenti != null) 'ressenti': ressenti,
      'consentement': consentement,
      'statut': statut,
      'dateInscription': dateInscription.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ParticipantImpl extends Participant {
  _ParticipantImpl({
    int? id,
    required int seanceId,
    required String nom,
    required String prenom,
    required String telephone,
    String? profession,
    required String statutLogement,
    String? lieu,
    required String localite,
    String? quartier,
    required List<String> besoinsExprimes,
    String? ressenti,
    required bool consentement,
    required String statut,
    required DateTime dateInscription,
  }) : super._(
         id: id,
         seanceId: seanceId,
         nom: nom,
         prenom: prenom,
         telephone: telephone,
         profession: profession,
         statutLogement: statutLogement,
         lieu: lieu,
         localite: localite,
         quartier: quartier,
         besoinsExprimes: besoinsExprimes,
         ressenti: ressenti,
         consentement: consentement,
         statut: statut,
         dateInscription: dateInscription,
       );

  /// Returns a shallow copy of this [Participant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Participant copyWith({
    Object? id = _Undefined,
    int? seanceId,
    String? nom,
    String? prenom,
    String? telephone,
    Object? profession = _Undefined,
    String? statutLogement,
    Object? lieu = _Undefined,
    String? localite,
    Object? quartier = _Undefined,
    List<String>? besoinsExprimes,
    Object? ressenti = _Undefined,
    bool? consentement,
    String? statut,
    DateTime? dateInscription,
  }) {
    return Participant(
      id: id is int? ? id : this.id,
      seanceId: seanceId ?? this.seanceId,
      nom: nom ?? this.nom,
      prenom: prenom ?? this.prenom,
      telephone: telephone ?? this.telephone,
      profession: profession is String? ? profession : this.profession,
      statutLogement: statutLogement ?? this.statutLogement,
      lieu: lieu is String? ? lieu : this.lieu,
      localite: localite ?? this.localite,
      quartier: quartier is String? ? quartier : this.quartier,
      besoinsExprimes:
          besoinsExprimes ?? this.besoinsExprimes.map((e0) => e0).toList(),
      ressenti: ressenti is String? ? ressenti : this.ressenti,
      consentement: consentement ?? this.consentement,
      statut: statut ?? this.statut,
      dateInscription: dateInscription ?? this.dateInscription,
    );
  }
}
