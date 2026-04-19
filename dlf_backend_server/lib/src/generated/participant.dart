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
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:dlf_backend_server/src/generated/protocol.dart' as _i2;

abstract class Participant
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ParticipantTable();

  static const db = ParticipantRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static ParticipantInclude include() {
    return ParticipantInclude._();
  }

  static ParticipantIncludeList includeList({
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    ParticipantInclude? include,
  }) {
    return ParticipantIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Participant.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Participant.t),
      include: include,
    );
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

class ParticipantUpdateTable extends _i1.UpdateTable<ParticipantTable> {
  ParticipantUpdateTable(super.table);

  _i1.ColumnValue<int, int> seanceId(int value) => _i1.ColumnValue(
    table.seanceId,
    value,
  );

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> prenom(String value) => _i1.ColumnValue(
    table.prenom,
    value,
  );

  _i1.ColumnValue<String, String> telephone(String value) => _i1.ColumnValue(
    table.telephone,
    value,
  );

  _i1.ColumnValue<String, String> profession(String? value) => _i1.ColumnValue(
    table.profession,
    value,
  );

  _i1.ColumnValue<String, String> statutLogement(String value) =>
      _i1.ColumnValue(
        table.statutLogement,
        value,
      );

  _i1.ColumnValue<String, String> lieu(String? value) => _i1.ColumnValue(
    table.lieu,
    value,
  );

  _i1.ColumnValue<String, String> localite(String value) => _i1.ColumnValue(
    table.localite,
    value,
  );

  _i1.ColumnValue<String, String> quartier(String? value) => _i1.ColumnValue(
    table.quartier,
    value,
  );

  _i1.ColumnValue<List<String>, List<String>> besoinsExprimes(
    List<String> value,
  ) => _i1.ColumnValue(
    table.besoinsExprimes,
    value,
  );

  _i1.ColumnValue<String, String> ressenti(String? value) => _i1.ColumnValue(
    table.ressenti,
    value,
  );

  _i1.ColumnValue<bool, bool> consentement(bool value) => _i1.ColumnValue(
    table.consentement,
    value,
  );

  _i1.ColumnValue<String, String> statut(String value) => _i1.ColumnValue(
    table.statut,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateInscription(DateTime value) =>
      _i1.ColumnValue(
        table.dateInscription,
        value,
      );
}

class ParticipantTable extends _i1.Table<int?> {
  ParticipantTable({super.tableRelation}) : super(tableName: 'participant') {
    updateTable = ParticipantUpdateTable(this);
    seanceId = _i1.ColumnInt(
      'seanceId',
      this,
    );
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    prenom = _i1.ColumnString(
      'prenom',
      this,
    );
    telephone = _i1.ColumnString(
      'telephone',
      this,
    );
    profession = _i1.ColumnString(
      'profession',
      this,
    );
    statutLogement = _i1.ColumnString(
      'statutLogement',
      this,
    );
    lieu = _i1.ColumnString(
      'lieu',
      this,
    );
    localite = _i1.ColumnString(
      'localite',
      this,
    );
    quartier = _i1.ColumnString(
      'quartier',
      this,
    );
    besoinsExprimes = _i1.ColumnSerializable<List<String>>(
      'besoinsExprimes',
      this,
    );
    ressenti = _i1.ColumnString(
      'ressenti',
      this,
    );
    consentement = _i1.ColumnBool(
      'consentement',
      this,
    );
    statut = _i1.ColumnString(
      'statut',
      this,
    );
    dateInscription = _i1.ColumnDateTime(
      'dateInscription',
      this,
    );
  }

  late final ParticipantUpdateTable updateTable;

  late final _i1.ColumnInt seanceId;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString prenom;

  late final _i1.ColumnString telephone;

  late final _i1.ColumnString profession;

  late final _i1.ColumnString statutLogement;

  late final _i1.ColumnString lieu;

  late final _i1.ColumnString localite;

  late final _i1.ColumnString quartier;

  late final _i1.ColumnSerializable<List<String>> besoinsExprimes;

  late final _i1.ColumnString ressenti;

  late final _i1.ColumnBool consentement;

  late final _i1.ColumnString statut;

  late final _i1.ColumnDateTime dateInscription;

  @override
  List<_i1.Column> get columns => [
    id,
    seanceId,
    nom,
    prenom,
    telephone,
    profession,
    statutLogement,
    lieu,
    localite,
    quartier,
    besoinsExprimes,
    ressenti,
    consentement,
    statut,
    dateInscription,
  ];
}

class ParticipantInclude extends _i1.IncludeObject {
  ParticipantInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Participant.t;
}

class ParticipantIncludeList extends _i1.IncludeList {
  ParticipantIncludeList._({
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Participant.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Participant.t;
}

class ParticipantRepository {
  const ParticipantRepository._();

  /// Returns a list of [Participant]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Participant>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Participant>(
      where: where?.call(Participant.t),
      orderBy: orderBy?.call(Participant.t),
      orderByList: orderByList?.call(Participant.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Participant] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Participant?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Participant>(
      where: where?.call(Participant.t),
      orderBy: orderBy?.call(Participant.t),
      orderByList: orderByList?.call(Participant.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Participant] by its [id] or null if no such row exists.
  Future<Participant?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Participant>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Participant]s in the list and returns the inserted rows.
  ///
  /// The returned [Participant]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Participant>> insert(
    _i1.DatabaseSession session,
    List<Participant> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Participant>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Participant] and returns the inserted row.
  ///
  /// The returned [Participant] will have its `id` field set.
  Future<Participant> insertRow(
    _i1.DatabaseSession session,
    Participant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Participant>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Participant]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Participant>> update(
    _i1.DatabaseSession session,
    List<Participant> rows, {
    _i1.ColumnSelections<ParticipantTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Participant>(
      rows,
      columns: columns?.call(Participant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Participant]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Participant> updateRow(
    _i1.DatabaseSession session,
    Participant row, {
    _i1.ColumnSelections<ParticipantTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Participant>(
      row,
      columns: columns?.call(Participant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Participant] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Participant?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<ParticipantUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Participant>(
      id,
      columnValues: columnValues(Participant.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Participant]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Participant>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ParticipantUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ParticipantTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Participant>(
      columnValues: columnValues(Participant.t.updateTable),
      where: where(Participant.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Participant.t),
      orderByList: orderByList?.call(Participant.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Participant]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Participant>> delete(
    _i1.DatabaseSession session,
    List<Participant> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Participant>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Participant].
  Future<Participant> deleteRow(
    _i1.DatabaseSession session,
    Participant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Participant>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Participant>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ParticipantTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Participant>(
      where: where(Participant.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Participant>(
      where: where?.call(Participant.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Participant] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ParticipantTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Participant>(
      where: where(Participant.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
