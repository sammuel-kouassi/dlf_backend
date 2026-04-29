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
import 'distribution.dart' as _i2;
import 'gadget.dart' as _i3;
import 'greetings/greeting.dart' as _i4;
import 'image.dart' as _i5;
import 'participant.dart' as _i6;
import 'prise_contact.dart' as _i7;
import 'rdv.dart' as _i8;
import 'seance.dart' as _i9;
import 'utilisateur.dart' as _i10;
import 'package:dlf_backend_client/src/protocol/gadget.dart' as _i11;
import 'package:dlf_backend_client/src/protocol/image.dart' as _i12;
import 'package:dlf_backend_client/src/protocol/participant.dart' as _i13;
import 'package:dlf_backend_client/src/protocol/prise_contact.dart' as _i14;
import 'package:dlf_backend_client/src/protocol/rdv.dart' as _i15;
import 'package:dlf_backend_client/src/protocol/seance.dart' as _i16;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i17;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i18;
export 'distribution.dart';
export 'gadget.dart';
export 'greetings/greeting.dart';
export 'image.dart';
export 'participant.dart';
export 'prise_contact.dart';
export 'rdv.dart';
export 'seance.dart';
export 'utilisateur.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.Distribution) {
      return _i2.Distribution.fromJson(data) as T;
    }
    if (t == _i3.Gadget) {
      return _i3.Gadget.fromJson(data) as T;
    }
    if (t == _i4.Greeting) {
      return _i4.Greeting.fromJson(data) as T;
    }
    if (t == _i5.Image) {
      return _i5.Image.fromJson(data) as T;
    }
    if (t == _i6.Participant) {
      return _i6.Participant.fromJson(data) as T;
    }
    if (t == _i7.PriseContact) {
      return _i7.PriseContact.fromJson(data) as T;
    }
    if (t == _i8.RendezVous) {
      return _i8.RendezVous.fromJson(data) as T;
    }
    if (t == _i9.Seance) {
      return _i9.Seance.fromJson(data) as T;
    }
    if (t == _i10.Utilisateur) {
      return _i10.Utilisateur.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Distribution?>()) {
      return (data != null ? _i2.Distribution.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Gadget?>()) {
      return (data != null ? _i3.Gadget.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Greeting?>()) {
      return (data != null ? _i4.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Image?>()) {
      return (data != null ? _i5.Image.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Participant?>()) {
      return (data != null ? _i6.Participant.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.PriseContact?>()) {
      return (data != null ? _i7.PriseContact.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.RendezVous?>()) {
      return (data != null ? _i8.RendezVous.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Seance?>()) {
      return (data != null ? _i9.Seance.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Utilisateur?>()) {
      return (data != null ? _i10.Utilisateur.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<String>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i11.Gadget>) {
      return (data as List).map((e) => deserialize<_i11.Gadget>(e)).toList()
          as T;
    }
    if (t == List<_i12.Image>) {
      return (data as List).map((e) => deserialize<_i12.Image>(e)).toList()
          as T;
    }
    if (t == List<_i13.Participant>) {
      return (data as List)
              .map((e) => deserialize<_i13.Participant>(e))
              .toList()
          as T;
    }
    if (t == List<_i14.PriseContact>) {
      return (data as List)
              .map((e) => deserialize<_i14.PriseContact>(e))
              .toList()
          as T;
    }
    if (t == List<_i15.RendezVous>) {
      return (data as List).map((e) => deserialize<_i15.RendezVous>(e)).toList()
          as T;
    }
    if (t == List<_i16.Seance>) {
      return (data as List).map((e) => deserialize<_i16.Seance>(e)).toList()
          as T;
    }
    try {
      return _i17.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i18.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Distribution => 'Distribution',
      _i3.Gadget => 'Gadget',
      _i4.Greeting => 'Greeting',
      _i5.Image => 'Image',
      _i6.Participant => 'Participant',
      _i7.PriseContact => 'PriseContact',
      _i8.RendezVous => 'RendezVous',
      _i9.Seance => 'Seance',
      _i10.Utilisateur => 'Utilisateur',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('dlf_backend.', '');
    }

    switch (data) {
      case _i2.Distribution():
        return 'Distribution';
      case _i3.Gadget():
        return 'Gadget';
      case _i4.Greeting():
        return 'Greeting';
      case _i5.Image():
        return 'Image';
      case _i6.Participant():
        return 'Participant';
      case _i7.PriseContact():
        return 'PriseContact';
      case _i8.RendezVous():
        return 'RendezVous';
      case _i9.Seance():
        return 'Seance';
      case _i10.Utilisateur():
        return 'Utilisateur';
    }
    className = _i17.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i18.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Distribution') {
      return deserialize<_i2.Distribution>(data['data']);
    }
    if (dataClassName == 'Gadget') {
      return deserialize<_i3.Gadget>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i4.Greeting>(data['data']);
    }
    if (dataClassName == 'Image') {
      return deserialize<_i5.Image>(data['data']);
    }
    if (dataClassName == 'Participant') {
      return deserialize<_i6.Participant>(data['data']);
    }
    if (dataClassName == 'PriseContact') {
      return deserialize<_i7.PriseContact>(data['data']);
    }
    if (dataClassName == 'RendezVous') {
      return deserialize<_i8.RendezVous>(data['data']);
    }
    if (dataClassName == 'Seance') {
      return deserialize<_i9.Seance>(data['data']);
    }
    if (dataClassName == 'Utilisateur') {
      return deserialize<_i10.Utilisateur>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i17.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i18.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i17.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i18.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
