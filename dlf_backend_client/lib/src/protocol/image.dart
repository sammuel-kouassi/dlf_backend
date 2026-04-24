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

abstract class Image implements _i1.SerializableModel {
  Image._({
    this.id,
    required this.seanceId,
    required this.url,
    this.legende,
    required this.date,
  });

  factory Image({
    int? id,
    required int seanceId,
    required List<String> url,
    String? legende,
    required DateTime date,
  }) = _ImageImpl;

  factory Image.fromJson(Map<String, dynamic> jsonSerialization) {
    return Image(
      id: jsonSerialization['id'] as int?,
      seanceId: jsonSerialization['seanceId'] as int,
      url: _i2.Protocol().deserialize<List<String>>(jsonSerialization['url']),
      legende: jsonSerialization['legende'] as String?,
      date: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int seanceId;

  List<String> url;

  String? legende;

  DateTime date;

  /// Returns a shallow copy of this [Image]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Image copyWith({
    int? id,
    int? seanceId,
    List<String>? url,
    String? legende,
    DateTime? date,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Image',
      if (id != null) 'id': id,
      'seanceId': seanceId,
      'url': url.toJson(),
      if (legende != null) 'legende': legende,
      'date': date.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ImageImpl extends Image {
  _ImageImpl({
    int? id,
    required int seanceId,
    required List<String> url,
    String? legende,
    required DateTime date,
  }) : super._(
         id: id,
         seanceId: seanceId,
         url: url,
         legende: legende,
         date: date,
       );

  /// Returns a shallow copy of this [Image]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Image copyWith({
    Object? id = _Undefined,
    int? seanceId,
    List<String>? url,
    Object? legende = _Undefined,
    DateTime? date,
  }) {
    return Image(
      id: id is int? ? id : this.id,
      seanceId: seanceId ?? this.seanceId,
      url: url ?? this.url.map((e0) => e0).toList(),
      legende: legende is String? ? legende : this.legende,
      date: date ?? this.date,
    );
  }
}
