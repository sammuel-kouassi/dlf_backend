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

abstract class Gadget implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Gadget._({
    this.id,
    required this.nom,
    required this.categorie,
    required this.stockInitial,
    required this.distribues,
  });

  factory Gadget({
    int? id,
    required String nom,
    required String categorie,
    required int stockInitial,
    required int distribues,
  }) = _GadgetImpl;

  factory Gadget.fromJson(Map<String, dynamic> jsonSerialization) {
    return Gadget(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      categorie: jsonSerialization['categorie'] as String,
      stockInitial: jsonSerialization['stockInitial'] as int,
      distribues: jsonSerialization['distribues'] as int,
    );
  }

  static final t = GadgetTable();

  static const db = GadgetRepository._();

  @override
  int? id;

  String nom;

  String categorie;

  int stockInitial;

  int distribues;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Gadget]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Gadget copyWith({
    int? id,
    String? nom,
    String? categorie,
    int? stockInitial,
    int? distribues,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Gadget',
      if (id != null) 'id': id,
      'nom': nom,
      'categorie': categorie,
      'stockInitial': stockInitial,
      'distribues': distribues,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Gadget',
      if (id != null) 'id': id,
      'nom': nom,
      'categorie': categorie,
      'stockInitial': stockInitial,
      'distribues': distribues,
    };
  }

  static GadgetInclude include() {
    return GadgetInclude._();
  }

  static GadgetIncludeList includeList({
    _i1.WhereExpressionBuilder<GadgetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GadgetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GadgetTable>? orderByList,
    GadgetInclude? include,
  }) {
    return GadgetIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Gadget.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Gadget.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GadgetImpl extends Gadget {
  _GadgetImpl({
    int? id,
    required String nom,
    required String categorie,
    required int stockInitial,
    required int distribues,
  }) : super._(
         id: id,
         nom: nom,
         categorie: categorie,
         stockInitial: stockInitial,
         distribues: distribues,
       );

  /// Returns a shallow copy of this [Gadget]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Gadget copyWith({
    Object? id = _Undefined,
    String? nom,
    String? categorie,
    int? stockInitial,
    int? distribues,
  }) {
    return Gadget(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      categorie: categorie ?? this.categorie,
      stockInitial: stockInitial ?? this.stockInitial,
      distribues: distribues ?? this.distribues,
    );
  }
}

class GadgetUpdateTable extends _i1.UpdateTable<GadgetTable> {
  GadgetUpdateTable(super.table);

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> categorie(String value) => _i1.ColumnValue(
    table.categorie,
    value,
  );

  _i1.ColumnValue<int, int> stockInitial(int value) => _i1.ColumnValue(
    table.stockInitial,
    value,
  );

  _i1.ColumnValue<int, int> distribues(int value) => _i1.ColumnValue(
    table.distribues,
    value,
  );
}

class GadgetTable extends _i1.Table<int?> {
  GadgetTable({super.tableRelation}) : super(tableName: 'gadget') {
    updateTable = GadgetUpdateTable(this);
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    categorie = _i1.ColumnString(
      'categorie',
      this,
    );
    stockInitial = _i1.ColumnInt(
      'stockInitial',
      this,
    );
    distribues = _i1.ColumnInt(
      'distribues',
      this,
    );
  }

  late final GadgetUpdateTable updateTable;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString categorie;

  late final _i1.ColumnInt stockInitial;

  late final _i1.ColumnInt distribues;

  @override
  List<_i1.Column> get columns => [
    id,
    nom,
    categorie,
    stockInitial,
    distribues,
  ];
}

class GadgetInclude extends _i1.IncludeObject {
  GadgetInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Gadget.t;
}

class GadgetIncludeList extends _i1.IncludeList {
  GadgetIncludeList._({
    _i1.WhereExpressionBuilder<GadgetTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Gadget.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Gadget.t;
}

class GadgetRepository {
  const GadgetRepository._();

  /// Returns a list of [Gadget]s matching the given query parameters.
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
  Future<List<Gadget>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GadgetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GadgetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GadgetTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Gadget>(
      where: where?.call(Gadget.t),
      orderBy: orderBy?.call(Gadget.t),
      orderByList: orderByList?.call(Gadget.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Gadget] matching the given query parameters.
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
  Future<Gadget?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GadgetTable>? where,
    int? offset,
    _i1.OrderByBuilder<GadgetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GadgetTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Gadget>(
      where: where?.call(Gadget.t),
      orderBy: orderBy?.call(Gadget.t),
      orderByList: orderByList?.call(Gadget.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Gadget] by its [id] or null if no such row exists.
  Future<Gadget?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Gadget>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Gadget]s in the list and returns the inserted rows.
  ///
  /// The returned [Gadget]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Gadget>> insert(
    _i1.DatabaseSession session,
    List<Gadget> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Gadget>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Gadget] and returns the inserted row.
  ///
  /// The returned [Gadget] will have its `id` field set.
  Future<Gadget> insertRow(
    _i1.DatabaseSession session,
    Gadget row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Gadget>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Gadget]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Gadget>> update(
    _i1.DatabaseSession session,
    List<Gadget> rows, {
    _i1.ColumnSelections<GadgetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Gadget>(
      rows,
      columns: columns?.call(Gadget.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Gadget]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Gadget> updateRow(
    _i1.DatabaseSession session,
    Gadget row, {
    _i1.ColumnSelections<GadgetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Gadget>(
      row,
      columns: columns?.call(Gadget.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Gadget] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Gadget?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<GadgetUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Gadget>(
      id,
      columnValues: columnValues(Gadget.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Gadget]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Gadget>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<GadgetUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<GadgetTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GadgetTable>? orderBy,
    _i1.OrderByListBuilder<GadgetTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Gadget>(
      columnValues: columnValues(Gadget.t.updateTable),
      where: where(Gadget.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Gadget.t),
      orderByList: orderByList?.call(Gadget.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Gadget]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Gadget>> delete(
    _i1.DatabaseSession session,
    List<Gadget> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Gadget>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Gadget].
  Future<Gadget> deleteRow(
    _i1.DatabaseSession session,
    Gadget row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Gadget>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Gadget>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GadgetTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Gadget>(
      where: where(Gadget.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GadgetTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Gadget>(
      where: where?.call(Gadget.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Gadget] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GadgetTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Gadget>(
      where: where(Gadget.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
