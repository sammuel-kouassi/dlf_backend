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

abstract class PriseContact
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PriseContactTable();

  static const db = PriseContactRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static PriseContactInclude include() {
    return PriseContactInclude._();
  }

  static PriseContactIncludeList includeList({
    _i1.WhereExpressionBuilder<PriseContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PriseContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PriseContactTable>? orderByList,
    PriseContactInclude? include,
  }) {
    return PriseContactIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PriseContact.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PriseContact.t),
      include: include,
    );
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

class PriseContactUpdateTable extends _i1.UpdateTable<PriseContactTable> {
  PriseContactUpdateTable(super.table);

  _i1.ColumnValue<int, int> seanceId(int value) => _i1.ColumnValue(
    table.seanceId,
    value,
  );

  _i1.ColumnValue<String, String> nomContact(String value) => _i1.ColumnValue(
    table.nomContact,
    value,
  );

  _i1.ColumnValue<String, String> telephone(String value) => _i1.ColumnValue(
    table.telephone,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> date(DateTime value) => _i1.ColumnValue(
    table.date,
    value,
  );

  _i1.ColumnValue<String, String> objetMission(String value) => _i1.ColumnValue(
    table.objetMission,
    value,
  );

  _i1.ColumnValue<String, String> directionRegionale(String value) =>
      _i1.ColumnValue(
        table.directionRegionale,
        value,
      );

  _i1.ColumnValue<String, String> agence(String? value) => _i1.ColumnValue(
    table.agence,
    value,
  );

  _i1.ColumnValue<String, String> quartier(String? value) => _i1.ColumnValue(
    table.quartier,
    value,
  );

  _i1.ColumnValue<String, String> site(String? value) => _i1.ColumnValue(
    table.site,
    value,
  );

  _i1.ColumnValue<List<String>, List<String>> pointsAbordes(
    List<String> value,
  ) => _i1.ColumnValue(
    table.pointsAbordes,
    value,
  );

  _i1.ColumnValue<String, String> observations(String? value) =>
      _i1.ColumnValue(
        table.observations,
        value,
      );

  _i1.ColumnValue<String, String> signatureBase64(String? value) =>
      _i1.ColumnValue(
        table.signatureBase64,
        value,
      );
}

class PriseContactTable extends _i1.Table<int?> {
  PriseContactTable({super.tableRelation}) : super(tableName: 'prise_contact') {
    updateTable = PriseContactUpdateTable(this);
    seanceId = _i1.ColumnInt(
      'seanceId',
      this,
    );
    nomContact = _i1.ColumnString(
      'nomContact',
      this,
    );
    telephone = _i1.ColumnString(
      'telephone',
      this,
    );
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    objetMission = _i1.ColumnString(
      'objetMission',
      this,
    );
    directionRegionale = _i1.ColumnString(
      'directionRegionale',
      this,
    );
    agence = _i1.ColumnString(
      'agence',
      this,
    );
    quartier = _i1.ColumnString(
      'quartier',
      this,
    );
    site = _i1.ColumnString(
      'site',
      this,
    );
    pointsAbordes = _i1.ColumnSerializable<List<String>>(
      'pointsAbordes',
      this,
    );
    observations = _i1.ColumnString(
      'observations',
      this,
    );
    signatureBase64 = _i1.ColumnString(
      'signatureBase64',
      this,
    );
  }

  late final PriseContactUpdateTable updateTable;

  late final _i1.ColumnInt seanceId;

  late final _i1.ColumnString nomContact;

  late final _i1.ColumnString telephone;

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString objetMission;

  late final _i1.ColumnString directionRegionale;

  late final _i1.ColumnString agence;

  late final _i1.ColumnString quartier;

  late final _i1.ColumnString site;

  late final _i1.ColumnSerializable<List<String>> pointsAbordes;

  late final _i1.ColumnString observations;

  late final _i1.ColumnString signatureBase64;

  @override
  List<_i1.Column> get columns => [
    id,
    seanceId,
    nomContact,
    telephone,
    date,
    objetMission,
    directionRegionale,
    agence,
    quartier,
    site,
    pointsAbordes,
    observations,
    signatureBase64,
  ];
}

class PriseContactInclude extends _i1.IncludeObject {
  PriseContactInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PriseContact.t;
}

class PriseContactIncludeList extends _i1.IncludeList {
  PriseContactIncludeList._({
    _i1.WhereExpressionBuilder<PriseContactTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PriseContact.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PriseContact.t;
}

class PriseContactRepository {
  const PriseContactRepository._();

  /// Returns a list of [PriseContact]s matching the given query parameters.
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
  Future<List<PriseContact>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PriseContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PriseContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PriseContactTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PriseContact>(
      where: where?.call(PriseContact.t),
      orderBy: orderBy?.call(PriseContact.t),
      orderByList: orderByList?.call(PriseContact.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PriseContact] matching the given query parameters.
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
  Future<PriseContact?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PriseContactTable>? where,
    int? offset,
    _i1.OrderByBuilder<PriseContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PriseContactTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PriseContact>(
      where: where?.call(PriseContact.t),
      orderBy: orderBy?.call(PriseContact.t),
      orderByList: orderByList?.call(PriseContact.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PriseContact] by its [id] or null if no such row exists.
  Future<PriseContact?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PriseContact>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PriseContact]s in the list and returns the inserted rows.
  ///
  /// The returned [PriseContact]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<PriseContact>> insert(
    _i1.DatabaseSession session,
    List<PriseContact> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<PriseContact>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [PriseContact] and returns the inserted row.
  ///
  /// The returned [PriseContact] will have its `id` field set.
  Future<PriseContact> insertRow(
    _i1.DatabaseSession session,
    PriseContact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PriseContact>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PriseContact]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PriseContact>> update(
    _i1.DatabaseSession session,
    List<PriseContact> rows, {
    _i1.ColumnSelections<PriseContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PriseContact>(
      rows,
      columns: columns?.call(PriseContact.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PriseContact]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PriseContact> updateRow(
    _i1.DatabaseSession session,
    PriseContact row, {
    _i1.ColumnSelections<PriseContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PriseContact>(
      row,
      columns: columns?.call(PriseContact.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PriseContact] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PriseContact?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<PriseContactUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PriseContact>(
      id,
      columnValues: columnValues(PriseContact.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PriseContact]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PriseContact>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<PriseContactUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PriseContactTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PriseContactTable>? orderBy,
    _i1.OrderByListBuilder<PriseContactTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PriseContact>(
      columnValues: columnValues(PriseContact.t.updateTable),
      where: where(PriseContact.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PriseContact.t),
      orderByList: orderByList?.call(PriseContact.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PriseContact]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PriseContact>> delete(
    _i1.DatabaseSession session,
    List<PriseContact> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PriseContact>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PriseContact].
  Future<PriseContact> deleteRow(
    _i1.DatabaseSession session,
    PriseContact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PriseContact>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PriseContact>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PriseContactTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PriseContact>(
      where: where(PriseContact.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PriseContactTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PriseContact>(
      where: where?.call(PriseContact.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PriseContact] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PriseContactTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PriseContact>(
      where: where(PriseContact.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
