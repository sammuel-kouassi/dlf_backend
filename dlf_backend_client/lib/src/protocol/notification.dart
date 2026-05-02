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

abstract class Notification implements _i1.SerializableModel {
  Notification._({
    this.id,
    required this.titre,
    this.corps,
    required this.type,
    required this.source,
    required this.cible,
    this.entityId,
    required this.isRead,
    required this.createdAt,
  });

  factory Notification({
    int? id,
    required String titre,
    String? corps,
    required String type,
    required String source,
    required String cible,
    int? entityId,
    required bool isRead,
    required DateTime createdAt,
  }) = _NotificationImpl;

  factory Notification.fromJson(Map<String, dynamic> jsonSerialization) {
    return Notification(
      id: jsonSerialization['id'] as int?,
      titre: jsonSerialization['titre'] as String,
      corps: jsonSerialization['corps'] as String?,
      type: jsonSerialization['type'] as String,
      source: jsonSerialization['source'] as String,
      cible: jsonSerialization['cible'] as String,
      entityId: jsonSerialization['entityId'] as int?,
      isRead: _i1.BoolJsonExtension.fromJson(jsonSerialization['isRead']),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String titre;

  String? corps;

  String type;

  String source;

  String cible;

  int? entityId;

  bool isRead;

  DateTime createdAt;

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Notification copyWith({
    int? id,
    String? titre,
    String? corps,
    String? type,
    String? source,
    String? cible,
    int? entityId,
    bool? isRead,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Notification',
      if (id != null) 'id': id,
      'titre': titre,
      if (corps != null) 'corps': corps,
      'type': type,
      'source': source,
      'cible': cible,
      if (entityId != null) 'entityId': entityId,
      'isRead': isRead,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificationImpl extends Notification {
  _NotificationImpl({
    int? id,
    required String titre,
    String? corps,
    required String type,
    required String source,
    required String cible,
    int? entityId,
    required bool isRead,
    required DateTime createdAt,
  }) : super._(
         id: id,
         titre: titre,
         corps: corps,
         type: type,
         source: source,
         cible: cible,
         entityId: entityId,
         isRead: isRead,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Notification copyWith({
    Object? id = _Undefined,
    String? titre,
    Object? corps = _Undefined,
    String? type,
    String? source,
    String? cible,
    Object? entityId = _Undefined,
    bool? isRead,
    DateTime? createdAt,
  }) {
    return Notification(
      id: id is int? ? id : this.id,
      titre: titre ?? this.titre,
      corps: corps is String? ? corps : this.corps,
      type: type ?? this.type,
      source: source ?? this.source,
      cible: cible ?? this.cible,
      entityId: entityId is int? ? entityId : this.entityId,
      isRead: isRead ?? this.isRead,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
