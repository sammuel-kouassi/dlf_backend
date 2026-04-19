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

abstract class Distribution
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = DistributionTable();

  static const db = DistributionRepository._();

  @override
  int? id;

  int seanceId;

  int participantId;

  int gadgetId;

  int quantite;

  DateTime dateDistribution;

  int agentId;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static DistributionInclude include() {
    return DistributionInclude._();
  }

  static DistributionIncludeList includeList({
    _i1.WhereExpressionBuilder<DistributionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DistributionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DistributionTable>? orderByList,
    DistributionInclude? include,
  }) {
    return DistributionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Distribution.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Distribution.t),
      include: include,
    );
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

class DistributionUpdateTable extends _i1.UpdateTable<DistributionTable> {
  DistributionUpdateTable(super.table);

  _i1.ColumnValue<int, int> seanceId(int value) => _i1.ColumnValue(
    table.seanceId,
    value,
  );

  _i1.ColumnValue<int, int> participantId(int value) => _i1.ColumnValue(
    table.participantId,
    value,
  );

  _i1.ColumnValue<int, int> gadgetId(int value) => _i1.ColumnValue(
    table.gadgetId,
    value,
  );

  _i1.ColumnValue<int, int> quantite(int value) => _i1.ColumnValue(
    table.quantite,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateDistribution(DateTime value) =>
      _i1.ColumnValue(
        table.dateDistribution,
        value,
      );

  _i1.ColumnValue<int, int> agentId(int value) => _i1.ColumnValue(
    table.agentId,
    value,
  );
}

class DistributionTable extends _i1.Table<int?> {
  DistributionTable({super.tableRelation}) : super(tableName: 'distribution') {
    updateTable = DistributionUpdateTable(this);
    seanceId = _i1.ColumnInt(
      'seanceId',
      this,
    );
    participantId = _i1.ColumnInt(
      'participantId',
      this,
    );
    gadgetId = _i1.ColumnInt(
      'gadgetId',
      this,
    );
    quantite = _i1.ColumnInt(
      'quantite',
      this,
    );
    dateDistribution = _i1.ColumnDateTime(
      'dateDistribution',
      this,
    );
    agentId = _i1.ColumnInt(
      'agentId',
      this,
    );
  }

  late final DistributionUpdateTable updateTable;

  late final _i1.ColumnInt seanceId;

  late final _i1.ColumnInt participantId;

  late final _i1.ColumnInt gadgetId;

  late final _i1.ColumnInt quantite;

  late final _i1.ColumnDateTime dateDistribution;

  late final _i1.ColumnInt agentId;

  @override
  List<_i1.Column> get columns => [
    id,
    seanceId,
    participantId,
    gadgetId,
    quantite,
    dateDistribution,
    agentId,
  ];
}

class DistributionInclude extends _i1.IncludeObject {
  DistributionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Distribution.t;
}

class DistributionIncludeList extends _i1.IncludeList {
  DistributionIncludeList._({
    _i1.WhereExpressionBuilder<DistributionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Distribution.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Distribution.t;
}

class DistributionRepository {
  const DistributionRepository._();

  /// Returns a list of [Distribution]s matching the given query parameters.
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
  Future<List<Distribution>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DistributionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DistributionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DistributionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Distribution>(
      where: where?.call(Distribution.t),
      orderBy: orderBy?.call(Distribution.t),
      orderByList: orderByList?.call(Distribution.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Distribution] matching the given query parameters.
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
  Future<Distribution?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DistributionTable>? where,
    int? offset,
    _i1.OrderByBuilder<DistributionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DistributionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Distribution>(
      where: where?.call(Distribution.t),
      orderBy: orderBy?.call(Distribution.t),
      orderByList: orderByList?.call(Distribution.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Distribution] by its [id] or null if no such row exists.
  Future<Distribution?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Distribution>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Distribution]s in the list and returns the inserted rows.
  ///
  /// The returned [Distribution]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Distribution>> insert(
    _i1.DatabaseSession session,
    List<Distribution> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Distribution>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Distribution] and returns the inserted row.
  ///
  /// The returned [Distribution] will have its `id` field set.
  Future<Distribution> insertRow(
    _i1.DatabaseSession session,
    Distribution row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Distribution>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Distribution]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Distribution>> update(
    _i1.DatabaseSession session,
    List<Distribution> rows, {
    _i1.ColumnSelections<DistributionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Distribution>(
      rows,
      columns: columns?.call(Distribution.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Distribution]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Distribution> updateRow(
    _i1.DatabaseSession session,
    Distribution row, {
    _i1.ColumnSelections<DistributionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Distribution>(
      row,
      columns: columns?.call(Distribution.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Distribution] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Distribution?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<DistributionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Distribution>(
      id,
      columnValues: columnValues(Distribution.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Distribution]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Distribution>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<DistributionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<DistributionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DistributionTable>? orderBy,
    _i1.OrderByListBuilder<DistributionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Distribution>(
      columnValues: columnValues(Distribution.t.updateTable),
      where: where(Distribution.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Distribution.t),
      orderByList: orderByList?.call(Distribution.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Distribution]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Distribution>> delete(
    _i1.DatabaseSession session,
    List<Distribution> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Distribution>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Distribution].
  Future<Distribution> deleteRow(
    _i1.DatabaseSession session,
    Distribution row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Distribution>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Distribution>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<DistributionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Distribution>(
      where: where(Distribution.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DistributionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Distribution>(
      where: where?.call(Distribution.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Distribution] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<DistributionTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Distribution>(
      where: where(Distribution.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
