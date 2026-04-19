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

abstract class RendezVous
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  RendezVous._({
    this.id,
    required this.seanceId,
    required this.titre,
    required this.contact,
    required this.dateRdv,
    required this.heure,
    required this.lieu,
    required this.statut,
  });

  factory RendezVous({
    int? id,
    required int seanceId,
    required String titre,
    required String contact,
    required DateTime dateRdv,
    required String heure,
    required String lieu,
    required String statut,
  }) = _RendezVousImpl;

  factory RendezVous.fromJson(Map<String, dynamic> jsonSerialization) {
    return RendezVous(
      id: jsonSerialization['id'] as int?,
      seanceId: jsonSerialization['seanceId'] as int,
      titre: jsonSerialization['titre'] as String,
      contact: jsonSerialization['contact'] as String,
      dateRdv: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateRdv']),
      heure: jsonSerialization['heure'] as String,
      lieu: jsonSerialization['lieu'] as String,
      statut: jsonSerialization['statut'] as String,
    );
  }

  static final t = RendezVousTable();

  static const db = RendezVousRepository._();

  @override
  int? id;

  int seanceId;

  String titre;

  String contact;

  DateTime dateRdv;

  String heure;

  String lieu;

  String statut;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [RendezVous]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RendezVous copyWith({
    int? id,
    int? seanceId,
    String? titre,
    String? contact,
    DateTime? dateRdv,
    String? heure,
    String? lieu,
    String? statut,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RendezVous',
      if (id != null) 'id': id,
      'seanceId': seanceId,
      'titre': titre,
      'contact': contact,
      'dateRdv': dateRdv.toJson(),
      'heure': heure,
      'lieu': lieu,
      'statut': statut,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RendezVous',
      if (id != null) 'id': id,
      'seanceId': seanceId,
      'titre': titre,
      'contact': contact,
      'dateRdv': dateRdv.toJson(),
      'heure': heure,
      'lieu': lieu,
      'statut': statut,
    };
  }

  static RendezVousInclude include() {
    return RendezVousInclude._();
  }

  static RendezVousIncludeList includeList({
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    RendezVousInclude? include,
  }) {
    return RendezVousIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RendezVous.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RendezVous.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RendezVousImpl extends RendezVous {
  _RendezVousImpl({
    int? id,
    required int seanceId,
    required String titre,
    required String contact,
    required DateTime dateRdv,
    required String heure,
    required String lieu,
    required String statut,
  }) : super._(
         id: id,
         seanceId: seanceId,
         titre: titre,
         contact: contact,
         dateRdv: dateRdv,
         heure: heure,
         lieu: lieu,
         statut: statut,
       );

  /// Returns a shallow copy of this [RendezVous]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RendezVous copyWith({
    Object? id = _Undefined,
    int? seanceId,
    String? titre,
    String? contact,
    DateTime? dateRdv,
    String? heure,
    String? lieu,
    String? statut,
  }) {
    return RendezVous(
      id: id is int? ? id : this.id,
      seanceId: seanceId ?? this.seanceId,
      titre: titre ?? this.titre,
      contact: contact ?? this.contact,
      dateRdv: dateRdv ?? this.dateRdv,
      heure: heure ?? this.heure,
      lieu: lieu ?? this.lieu,
      statut: statut ?? this.statut,
    );
  }
}

class RendezVousUpdateTable extends _i1.UpdateTable<RendezVousTable> {
  RendezVousUpdateTable(super.table);

  _i1.ColumnValue<int, int> seanceId(int value) => _i1.ColumnValue(
    table.seanceId,
    value,
  );

  _i1.ColumnValue<String, String> titre(String value) => _i1.ColumnValue(
    table.titre,
    value,
  );

  _i1.ColumnValue<String, String> contact(String value) => _i1.ColumnValue(
    table.contact,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateRdv(DateTime value) =>
      _i1.ColumnValue(
        table.dateRdv,
        value,
      );

  _i1.ColumnValue<String, String> heure(String value) => _i1.ColumnValue(
    table.heure,
    value,
  );

  _i1.ColumnValue<String, String> lieu(String value) => _i1.ColumnValue(
    table.lieu,
    value,
  );

  _i1.ColumnValue<String, String> statut(String value) => _i1.ColumnValue(
    table.statut,
    value,
  );
}

class RendezVousTable extends _i1.Table<int?> {
  RendezVousTable({super.tableRelation}) : super(tableName: 'rdv') {
    updateTable = RendezVousUpdateTable(this);
    seanceId = _i1.ColumnInt(
      'seanceId',
      this,
    );
    titre = _i1.ColumnString(
      'titre',
      this,
    );
    contact = _i1.ColumnString(
      'contact',
      this,
    );
    dateRdv = _i1.ColumnDateTime(
      'dateRdv',
      this,
    );
    heure = _i1.ColumnString(
      'heure',
      this,
    );
    lieu = _i1.ColumnString(
      'lieu',
      this,
    );
    statut = _i1.ColumnString(
      'statut',
      this,
    );
  }

  late final RendezVousUpdateTable updateTable;

  late final _i1.ColumnInt seanceId;

  late final _i1.ColumnString titre;

  late final _i1.ColumnString contact;

  late final _i1.ColumnDateTime dateRdv;

  late final _i1.ColumnString heure;

  late final _i1.ColumnString lieu;

  late final _i1.ColumnString statut;

  @override
  List<_i1.Column> get columns => [
    id,
    seanceId,
    titre,
    contact,
    dateRdv,
    heure,
    lieu,
    statut,
  ];
}

class RendezVousInclude extends _i1.IncludeObject {
  RendezVousInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => RendezVous.t;
}

class RendezVousIncludeList extends _i1.IncludeList {
  RendezVousIncludeList._({
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RendezVous.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => RendezVous.t;
}

class RendezVousRepository {
  const RendezVousRepository._();

  /// Returns a list of [RendezVous]s matching the given query parameters.
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
  Future<List<RendezVous>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RendezVous>(
      where: where?.call(RendezVous.t),
      orderBy: orderBy?.call(RendezVous.t),
      orderByList: orderByList?.call(RendezVous.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [RendezVous] matching the given query parameters.
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
  Future<RendezVous?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RendezVous>(
      where: where?.call(RendezVous.t),
      orderBy: orderBy?.call(RendezVous.t),
      orderByList: orderByList?.call(RendezVous.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RendezVous] by its [id] or null if no such row exists.
  Future<RendezVous?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<RendezVous>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [RendezVous]s in the list and returns the inserted rows.
  ///
  /// The returned [RendezVous]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<RendezVous>> insert(
    _i1.DatabaseSession session,
    List<RendezVous> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<RendezVous>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [RendezVous] and returns the inserted row.
  ///
  /// The returned [RendezVous] will have its `id` field set.
  Future<RendezVous> insertRow(
    _i1.DatabaseSession session,
    RendezVous row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RendezVous>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [RendezVous]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<RendezVous>> update(
    _i1.DatabaseSession session,
    List<RendezVous> rows, {
    _i1.ColumnSelections<RendezVousTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RendezVous>(
      rows,
      columns: columns?.call(RendezVous.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RendezVous]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RendezVous> updateRow(
    _i1.DatabaseSession session,
    RendezVous row, {
    _i1.ColumnSelections<RendezVousTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<RendezVous>(
      row,
      columns: columns?.call(RendezVous.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RendezVous] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<RendezVous?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<RendezVousUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<RendezVous>(
      id,
      columnValues: columnValues(RendezVous.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RendezVous]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<RendezVous>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<RendezVousUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<RendezVousTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<RendezVous>(
      columnValues: columnValues(RendezVous.t.updateTable),
      where: where(RendezVous.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RendezVous.t),
      orderByList: orderByList?.call(RendezVous.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [RendezVous]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<RendezVous>> delete(
    _i1.DatabaseSession session,
    List<RendezVous> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RendezVous>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [RendezVous].
  Future<RendezVous> deleteRow(
    _i1.DatabaseSession session,
    RendezVous row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RendezVous>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<RendezVous>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RendezVousTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RendezVous>(
      where: where(RendezVous.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RendezVous>(
      where: where?.call(RendezVous.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RendezVous] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RendezVousTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<RendezVous>(
      where: where(RendezVous.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
