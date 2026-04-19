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

abstract class Distribution implements _i1.SerializableModel {
  Distribution._({
    this.id,
    required this.seanceId,
    required this.participantId,
    required this.gadgetId,
    required this.quantite,
    required this.dateDistribution,
    required this.agentId,
  });

  factory Distribution({
    int? id,
    required int seanceId,
    required int participantId,
    required int gadgetId,
    required int quantite,
    required DateTime dateDistribution,
    required int agentId,
  }) = _DistributionImpl;

  factory Distribution.fromJson(Map<String, dynamic> jsonSerialization) {
    return Distribution(
      id: jsonSerialization['id'] as int?,
      seanceId: jsonSerialization['seanceId'] as int,
      participantId: jsonSerialization['participantId'] as int,
      gadgetId: jsonSerialization['gadgetId'] as int,
      quantite: jsonSerialization['quantite'] as int,
      dateDistribution: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['dateDistribution'],
      ),
      agentId: jsonSerialization['agentId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int seanceId;

  int participantId;

  int gadgetId;

  int quantite;

  DateTime dateDistribution;

  int agentId;

  /// Returns a shallow copy of this [Distribution]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Distribution copyWith({
    int? id,
    int? seanceId,
    int? participantId,
    int? gadgetId,
    int? quantite,
    DateTime? dateDistribution,
    int? agentId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Distribution',
      if (id != null) 'id': id,
      'seanceId': seanceId,
      'participantId': participantId,
      'gadgetId': gadgetId,
      'quantite': quantite,
      'dateDistribution': dateDistribution.toJson(),
      'agentId': agentId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DistributionImpl extends Distribution {
  _DistributionImpl({
    int? id,
    required int seanceId,
    required int participantId,
    required int gadgetId,
    required int quantite,
    required DateTime dateDistribution,
    required int agentId,
  }) : super._(
         id: id,
         seanceId: seanceId,
         participantId: participantId,
         gadgetId: gadgetId,
         quantite: quantite,
         dateDistribution: dateDistribution,
         agentId: agentId,
       );

  /// Returns a shallow copy of this [Distribution]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Distribution copyWith({
    Object? id = _Undefined,
    int? seanceId,
    int? participantId,
    int? gadgetId,
    int? quantite,
    DateTime? dateDistribution,
    int? agentId,
  }) {
    return Distribution(
      id: id is int? ? id : this.id,
      seanceId: seanceId ?? this.seanceId,
      participantId: participantId ?? this.participantId,
      gadgetId: gadgetId ?? this.gadgetId,
      quantite: quantite ?? this.quantite,
      dateDistribution: dateDistribution ?? this.dateDistribution,
      agentId: agentId ?? this.agentId,
    );
  }
}
