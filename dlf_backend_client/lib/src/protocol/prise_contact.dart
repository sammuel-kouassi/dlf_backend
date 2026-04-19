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

abstract class PriseContact implements _i1.SerializableModel {
  PriseContact._({
    this.id,
    required this.seanceId,
    required this.nomContact,
    required this.telephone,
    required this.date,
    required this.objetMission,
    required this.directionRegionale,
    this.agence,
    this.quartier,
    this.site,
    required this.pointsAbordes,
    this.observations,
    this.signatureBase64,
  });

  factory PriseContact({
    int? id,
    required int seanceId,
    required String nomContact,
    required String telephone,
    required DateTime date,
    required String objetMission,
    required String directionRegionale,
    String? agence,
    String? quartier,
    String? site,
    required List<String> pointsAbordes,
    String? observations,
    String? signatureBase64,
  }) = _PriseContactImpl;

  factory PriseContact.fromJson(Map<String, dynamic> jsonSerialization) {
    return PriseContact(
      id: jsonSerialization['id'] as int?,
      seanceId: jsonSerialization['seanceId'] as int,
      nomContact: jsonSerialization['nomContact'] as String,
      telephone: jsonSerialization['telephone'] as String,
      date: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      objetMission: jsonSerialization['objetMission'] as String,
      directionRegionale: jsonSerialization['directionRegionale'] as String,
      agence: jsonSerialization['agence'] as String?,
      quartier: jsonSerialization['quartier'] as String?,
      site: jsonSerialization['site'] as String?,
      pointsAbordes: _i2.Protocol().deserialize<List<String>>(
        jsonSerialization['pointsAbordes'],
      ),
      observations: jsonSerialization['observations'] as String?,
      signatureBase64: jsonSerialization['signatureBase64'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int seanceId;

  String nomContact;

  String telephone;

  DateTime date;

  String objetMission;

  String directionRegionale;

  String? agence;

  String? quartier;

  String? site;

  List<String> pointsAbordes;

  String? observations;

  String? signatureBase64;

  /// Returns a shallow copy of this [PriseContact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PriseContact copyWith({
    int? id,
    int? seanceId,
    String? nomContact,
    String? telephone,
    DateTime? date,
    String? objetMission,
    String? directionRegionale,
    String? agence,
    String? quartier,
    String? site,
    List<String>? pointsAbordes,
    String? observations,
    String? signatureBase64,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PriseContact',
      if (id != null) 'id': id,
      'seanceId': seanceId,
      'nomContact': nomContact,
      'telephone': telephone,
      'date': date.toJson(),
      'objetMission': objetMission,
      'directionRegionale': directionRegionale,
      if (agence != null) 'agence': agence,
      if (quartier != null) 'quartier': quartier,
      if (site != null) 'site': site,
      'pointsAbordes': pointsAbordes.toJson(),
      if (observations != null) 'observations': observations,
      if (signatureBase64 != null) 'signatureBase64': signatureBase64,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PriseContactImpl extends PriseContact {
  _PriseContactImpl({
    int? id,
    required int seanceId,
    required String nomContact,
    required String telephone,
    required DateTime date,
    required String objetMission,
    required String directionRegionale,
    String? agence,
    String? quartier,
    String? site,
    required List<String> pointsAbordes,
    String? observations,
    String? signatureBase64,
  }) : super._(
         id: id,
         seanceId: seanceId,
         nomContact: nomContact,
         telephone: telephone,
         date: date,
         objetMission: objetMission,
         directionRegionale: directionRegionale,
         agence: agence,
         quartier: quartier,
         site: site,
         pointsAbordes: pointsAbordes,
         observations: observations,
         signatureBase64: signatureBase64,
       );

  /// Returns a shallow copy of this [PriseContact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PriseContact copyWith({
    Object? id = _Undefined,
    int? seanceId,
    String? nomContact,
    String? telephone,
    DateTime? date,
    String? objetMission,
    String? directionRegionale,
    Object? agence = _Undefined,
    Object? quartier = _Undefined,
    Object? site = _Undefined,
    List<String>? pointsAbordes,
    Object? observations = _Undefined,
    Object? signatureBase64 = _Undefined,
  }) {
    return PriseContact(
      id: id is int? ? id : this.id,
      seanceId: seanceId ?? this.seanceId,
      nomContact: nomContact ?? this.nomContact,
      telephone: telephone ?? this.telephone,
      date: date ?? this.date,
      objetMission: objetMission ?? this.objetMission,
      directionRegionale: directionRegionale ?? this.directionRegionale,
      agence: agence is String? ? agence : this.agence,
      quartier: quartier is String? ? quartier : this.quartier,
      site: site is String? ? site : this.site,
      pointsAbordes:
          pointsAbordes ?? this.pointsAbordes.map((e0) => e0).toList(),
      observations: observations is String? ? observations : this.observations,
      signatureBase64: signatureBase64 is String?
          ? signatureBase64
          : this.signatureBase64,
    );
  }
}
