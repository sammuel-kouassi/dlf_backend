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

abstract class Utilisateur
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Utilisateur._({
    this.id,
    required this.nom,
    required this.email,
    required this.motDePasse,
    required this.role,
  });

  factory Utilisateur({
    int? id,
    required String nom,
    required String email,
    required String motDePasse,
    required String role,
  }) = _UtilisateurImpl;

  factory Utilisateur.fromJson(Map<String, dynamic> jsonSerialization) {
    return Utilisateur(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      email: jsonSerialization['email'] as String,
      motDePasse: jsonSerialization['motDePasse'] as String,
      role: jsonSerialization['role'] as String,
    );
  }

  static final t = UtilisateurTable();

  static const db = UtilisateurRepository._();

  @override
  int? id;

  String nom;

  String email;

  String motDePasse;

  String role;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Utilisateur]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Utilisateur copyWith({
    int? id,
    String? nom,
    String? email,
    String? motDePasse,
    String? role,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Utilisateur',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      'motDePasse': motDePasse,
      'role': role,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Utilisateur',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      'motDePasse': motDePasse,
      'role': role,
    };
  }

  static UtilisateurInclude include() {
    return UtilisateurInclude._();
  }

  static UtilisateurIncludeList includeList({
    _i1.WhereExpressionBuilder<UtilisateurTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UtilisateurTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UtilisateurTable>? orderByList,
    UtilisateurInclude? include,
  }) {
    return UtilisateurIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Utilisateur.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Utilisateur.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UtilisateurImpl extends Utilisateur {
  _UtilisateurImpl({
    int? id,
    required String nom,
    required String email,
    required String motDePasse,
    required String role,
  }) : super._(
         id: id,
         nom: nom,
         email: email,
         motDePasse: motDePasse,
         role: role,
       );

  /// Returns a shallow copy of this [Utilisateur]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Utilisateur copyWith({
    Object? id = _Undefined,
    String? nom,
    String? email,
    String? motDePasse,
    String? role,
  }) {
    return Utilisateur(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      email: email ?? this.email,
      motDePasse: motDePasse ?? this.motDePasse,
      role: role ?? this.role,
    );
  }
}

class UtilisateurUpdateTable extends _i1.UpdateTable<UtilisateurTable> {
  UtilisateurUpdateTable(super.table);

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> motDePasse(String value) => _i1.ColumnValue(
    table.motDePasse,
    value,
  );

  _i1.ColumnValue<String, String> role(String value) => _i1.ColumnValue(
    table.role,
    value,
  );
}

class UtilisateurTable extends _i1.Table<int?> {
  UtilisateurTable({super.tableRelation}) : super(tableName: 'utilisateur') {
    updateTable = UtilisateurUpdateTable(this);
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    motDePasse = _i1.ColumnString(
      'motDePasse',
      this,
    );
    role = _i1.ColumnString(
      'role',
      this,
    );
  }

  late final UtilisateurUpdateTable updateTable;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString email;

  late final _i1.ColumnString motDePasse;

  late final _i1.ColumnString role;

  @override
  List<_i1.Column> get columns => [
    id,
    nom,
    email,
    motDePasse,
    role,
  ];
}

class UtilisateurInclude extends _i1.IncludeObject {
  UtilisateurInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Utilisateur.t;
}

class UtilisateurIncludeList extends _i1.IncludeList {
  UtilisateurIncludeList._({
    _i1.WhereExpressionBuilder<UtilisateurTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Utilisateur.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Utilisateur.t;
}

class UtilisateurRepository {
  const UtilisateurRepository._();

  /// Returns a list of [Utilisateur]s matching the given query parameters.
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
  Future<List<Utilisateur>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UtilisateurTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UtilisateurTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UtilisateurTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Utilisateur>(
      where: where?.call(Utilisateur.t),
      orderBy: orderBy?.call(Utilisateur.t),
      orderByList: orderByList?.call(Utilisateur.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Utilisateur] matching the given query parameters.
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
  Future<Utilisateur?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UtilisateurTable>? where,
    int? offset,
    _i1.OrderByBuilder<UtilisateurTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UtilisateurTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Utilisateur>(
      where: where?.call(Utilisateur.t),
      orderBy: orderBy?.call(Utilisateur.t),
      orderByList: orderByList?.call(Utilisateur.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Utilisateur] by its [id] or null if no such row exists.
  Future<Utilisateur?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Utilisateur>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Utilisateur]s in the list and returns the inserted rows.
  ///
  /// The returned [Utilisateur]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Utilisateur>> insert(
    _i1.DatabaseSession session,
    List<Utilisateur> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Utilisateur>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Utilisateur] and returns the inserted row.
  ///
  /// The returned [Utilisateur] will have its `id` field set.
  Future<Utilisateur> insertRow(
    _i1.DatabaseSession session,
    Utilisateur row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Utilisateur>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Utilisateur]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Utilisateur>> update(
    _i1.DatabaseSession session,
    List<Utilisateur> rows, {
    _i1.ColumnSelections<UtilisateurTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Utilisateur>(
      rows,
      columns: columns?.call(Utilisateur.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Utilisateur]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Utilisateur> updateRow(
    _i1.DatabaseSession session,
    Utilisateur row, {
    _i1.ColumnSelections<UtilisateurTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Utilisateur>(
      row,
      columns: columns?.call(Utilisateur.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Utilisateur] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Utilisateur?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<UtilisateurUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Utilisateur>(
      id,
      columnValues: columnValues(Utilisateur.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Utilisateur]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Utilisateur>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<UtilisateurUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UtilisateurTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UtilisateurTable>? orderBy,
    _i1.OrderByListBuilder<UtilisateurTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Utilisateur>(
      columnValues: columnValues(Utilisateur.t.updateTable),
      where: where(Utilisateur.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Utilisateur.t),
      orderByList: orderByList?.call(Utilisateur.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Utilisateur]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Utilisateur>> delete(
    _i1.DatabaseSession session,
    List<Utilisateur> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Utilisateur>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Utilisateur].
  Future<Utilisateur> deleteRow(
    _i1.DatabaseSession session,
    Utilisateur row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Utilisateur>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Utilisateur>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UtilisateurTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Utilisateur>(
      where: where(Utilisateur.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UtilisateurTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Utilisateur>(
      where: where?.call(Utilisateur.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Utilisateur] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UtilisateurTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Utilisateur>(
      where: where(Utilisateur.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
