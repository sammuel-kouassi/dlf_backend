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

abstract class Seance implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Seance._({
    this.id,
    required this.nom,
    this.motifs,
    this.typeSeance,
    this.cible,
    this.zone,
    this.ville,
    this.quartier,
    required this.objectifParticipants,
    required this.organisateur,
    this.presentateur,
    this.assistants,
    required this.datePrevue,
    this.heureDebut,
    this.heureFin,
    required this.estTerminee,
    required this.gadgetsPrevus,
    required this.gadgetsDistribues,
    required this.totalLogistique,
    this.nbParticipantsEstime,
    required this.evaluation,
  });

  factory Seance({
    int? id,
    required String nom,
    String? motifs,
    String? typeSeance,
    String? cible,
    String? zone,
    String? ville,
    String? quartier,
    required int objectifParticipants,
    required String organisateur,
    String? presentateur,
    List<String>? assistants,
    required DateTime datePrevue,
    String? heureDebut,
    String? heureFin,
    required bool estTerminee,
    required int gadgetsPrevus,
    required int gadgetsDistribues,
    required double totalLogistique,
    int? nbParticipantsEstime,
    required bool evaluation,
  }) = _SeanceImpl;

  factory Seance.fromJson(Map<String, dynamic> jsonSerialization) {
    return Seance(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      motifs: jsonSerialization['motifs'] as String?,
      typeSeance: jsonSerialization['typeSeance'] as String?,
      cible: jsonSerialization['cible'] as String?,
      zone: jsonSerialization['zone'] as String?,
      ville: jsonSerialization['ville'] as String?,
      quartier: jsonSerialization['quartier'] as String?,
      objectifParticipants: jsonSerialization['objectifParticipants'] as int,
      organisateur: jsonSerialization['organisateur'] as String,
      presentateur: jsonSerialization['presentateur'] as String?,
      assistants: jsonSerialization['assistants'] == null
          ? null
          : _i2.Protocol().deserialize<List<String>>(
              jsonSerialization['assistants'],
            ),
      datePrevue: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['datePrevue'],
      ),
      heureDebut: jsonSerialization['heureDebut'] as String?,
      heureFin: jsonSerialization['heureFin'] as String?,
      estTerminee: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['estTerminee'],
      ),
      gadgetsPrevus: jsonSerialization['gadgetsPrevus'] as int,
      gadgetsDistribues: jsonSerialization['gadgetsDistribues'] as int,
      totalLogistique: (jsonSerialization['totalLogistique'] as num).toDouble(),
      nbParticipantsEstime: jsonSerialization['nbParticipantsEstime'] as int?,
      evaluation: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['evaluation'],
      ),
    );
  }

  static final t = SeanceTable();

  static const db = SeanceRepository._();

  @override
  int? id;

  String nom;

  String? motifs;

  String? typeSeance;

  String? cible;

  String? zone;

  String? ville;

  String? quartier;

  int objectifParticipants;

  String organisateur;

  String? presentateur;

  List<String>? assistants;

  DateTime datePrevue;

  String? heureDebut;

  String? heureFin;

  bool estTerminee;

  int gadgetsPrevus;

  int gadgetsDistribues;

  double totalLogistique;

  int? nbParticipantsEstime;

  bool evaluation;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Seance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Seance copyWith({
    int? id,
    String? nom,
    String? motifs,
    String? typeSeance,
    String? cible,
    String? zone,
    String? ville,
    String? quartier,
    int? objectifParticipants,
    String? organisateur,
    String? presentateur,
    List<String>? assistants,
    DateTime? datePrevue,
    String? heureDebut,
    String? heureFin,
    bool? estTerminee,
    int? gadgetsPrevus,
    int? gadgetsDistribues,
    double? totalLogistique,
    int? nbParticipantsEstime,
    bool? evaluation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Seance',
      if (id != null) 'id': id,
      'nom': nom,
      if (motifs != null) 'motifs': motifs,
      if (typeSeance != null) 'typeSeance': typeSeance,
      if (cible != null) 'cible': cible,
      if (zone != null) 'zone': zone,
      if (ville != null) 'ville': ville,
      if (quartier != null) 'quartier': quartier,
      'objectifParticipants': objectifParticipants,
      'organisateur': organisateur,
      if (presentateur != null) 'presentateur': presentateur,
      if (assistants != null) 'assistants': assistants?.toJson(),
      'datePrevue': datePrevue.toJson(),
      if (heureDebut != null) 'heureDebut': heureDebut,
      if (heureFin != null) 'heureFin': heureFin,
      'estTerminee': estTerminee,
      'gadgetsPrevus': gadgetsPrevus,
      'gadgetsDistribues': gadgetsDistribues,
      'totalLogistique': totalLogistique,
      if (nbParticipantsEstime != null)
        'nbParticipantsEstime': nbParticipantsEstime,
      'evaluation': evaluation,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Seance',
      if (id != null) 'id': id,
      'nom': nom,
      if (motifs != null) 'motifs': motifs,
      if (typeSeance != null) 'typeSeance': typeSeance,
      if (cible != null) 'cible': cible,
      if (zone != null) 'zone': zone,
      if (ville != null) 'ville': ville,
      if (quartier != null) 'quartier': quartier,
      'objectifParticipants': objectifParticipants,
      'organisateur': organisateur,
      if (presentateur != null) 'presentateur': presentateur,
      if (assistants != null) 'assistants': assistants?.toJson(),
      'datePrevue': datePrevue.toJson(),
      if (heureDebut != null) 'heureDebut': heureDebut,
      if (heureFin != null) 'heureFin': heureFin,
      'estTerminee': estTerminee,
      'gadgetsPrevus': gadgetsPrevus,
      'gadgetsDistribues': gadgetsDistribues,
      'totalLogistique': totalLogistique,
      if (nbParticipantsEstime != null)
        'nbParticipantsEstime': nbParticipantsEstime,
      'evaluation': evaluation,
    };
  }

  static SeanceInclude include() {
    return SeanceInclude._();
  }

  static SeanceIncludeList includeList({
    _i1.WhereExpressionBuilder<SeanceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeanceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeanceTable>? orderByList,
    SeanceInclude? include,
  }) {
    return SeanceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Seance.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Seance.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SeanceImpl extends Seance {
  _SeanceImpl({
    int? id,
    required String nom,
    String? motifs,
    String? typeSeance,
    String? cible,
    String? zone,
    String? ville,
    String? quartier,
    required int objectifParticipants,
    required String organisateur,
    String? presentateur,
    List<String>? assistants,
    required DateTime datePrevue,
    String? heureDebut,
    String? heureFin,
    required bool estTerminee,
    required int gadgetsPrevus,
    required int gadgetsDistribues,
    required double totalLogistique,
    int? nbParticipantsEstime,
    required bool evaluation,
  }) : super._(
         id: id,
         nom: nom,
         motifs: motifs,
         typeSeance: typeSeance,
         cible: cible,
         zone: zone,
         ville: ville,
         quartier: quartier,
         objectifParticipants: objectifParticipants,
         organisateur: organisateur,
         presentateur: presentateur,
         assistants: assistants,
         datePrevue: datePrevue,
         heureDebut: heureDebut,
         heureFin: heureFin,
         estTerminee: estTerminee,
         gadgetsPrevus: gadgetsPrevus,
         gadgetsDistribues: gadgetsDistribues,
         totalLogistique: totalLogistique,
         nbParticipantsEstime: nbParticipantsEstime,
         evaluation: evaluation,
       );

  /// Returns a shallow copy of this [Seance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Seance copyWith({
    Object? id = _Undefined,
    String? nom,
    Object? motifs = _Undefined,
    Object? typeSeance = _Undefined,
    Object? cible = _Undefined,
    Object? zone = _Undefined,
    Object? ville = _Undefined,
    Object? quartier = _Undefined,
    int? objectifParticipants,
    String? organisateur,
    Object? presentateur = _Undefined,
    Object? assistants = _Undefined,
    DateTime? datePrevue,
    Object? heureDebut = _Undefined,
    Object? heureFin = _Undefined,
    bool? estTerminee,
    int? gadgetsPrevus,
    int? gadgetsDistribues,
    double? totalLogistique,
    Object? nbParticipantsEstime = _Undefined,
    bool? evaluation,
  }) {
    return Seance(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      motifs: motifs is String? ? motifs : this.motifs,
      typeSeance: typeSeance is String? ? typeSeance : this.typeSeance,
      cible: cible is String? ? cible : this.cible,
      zone: zone is String? ? zone : this.zone,
      ville: ville is String? ? ville : this.ville,
      quartier: quartier is String? ? quartier : this.quartier,
      objectifParticipants: objectifParticipants ?? this.objectifParticipants,
      organisateur: organisateur ?? this.organisateur,
      presentateur: presentateur is String? ? presentateur : this.presentateur,
      assistants: assistants is List<String>?
          ? assistants
          : this.assistants?.map((e0) => e0).toList(),
      datePrevue: datePrevue ?? this.datePrevue,
      heureDebut: heureDebut is String? ? heureDebut : this.heureDebut,
      heureFin: heureFin is String? ? heureFin : this.heureFin,
      estTerminee: estTerminee ?? this.estTerminee,
      gadgetsPrevus: gadgetsPrevus ?? this.gadgetsPrevus,
      gadgetsDistribues: gadgetsDistribues ?? this.gadgetsDistribues,
      totalLogistique: totalLogistique ?? this.totalLogistique,
      nbParticipantsEstime: nbParticipantsEstime is int?
          ? nbParticipantsEstime
          : this.nbParticipantsEstime,
      evaluation: evaluation ?? this.evaluation,
    );
  }
}

class SeanceUpdateTable extends _i1.UpdateTable<SeanceTable> {
  SeanceUpdateTable(super.table);

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> motifs(String? value) => _i1.ColumnValue(
    table.motifs,
    value,
  );

  _i1.ColumnValue<String, String> typeSeance(String? value) => _i1.ColumnValue(
    table.typeSeance,
    value,
  );

  _i1.ColumnValue<String, String> cible(String? value) => _i1.ColumnValue(
    table.cible,
    value,
  );

  _i1.ColumnValue<String, String> zone(String? value) => _i1.ColumnValue(
    table.zone,
    value,
  );

  _i1.ColumnValue<String, String> ville(String? value) => _i1.ColumnValue(
    table.ville,
    value,
  );

  _i1.ColumnValue<String, String> quartier(String? value) => _i1.ColumnValue(
    table.quartier,
    value,
  );

  _i1.ColumnValue<int, int> objectifParticipants(int value) => _i1.ColumnValue(
    table.objectifParticipants,
    value,
  );

  _i1.ColumnValue<String, String> organisateur(String value) => _i1.ColumnValue(
    table.organisateur,
    value,
  );

  _i1.ColumnValue<String, String> presentateur(String? value) =>
      _i1.ColumnValue(
        table.presentateur,
        value,
      );

  _i1.ColumnValue<List<String>, List<String>> assistants(List<String>? value) =>
      _i1.ColumnValue(
        table.assistants,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> datePrevue(DateTime value) =>
      _i1.ColumnValue(
        table.datePrevue,
        value,
      );

  _i1.ColumnValue<String, String> heureDebut(String? value) => _i1.ColumnValue(
    table.heureDebut,
    value,
  );

  _i1.ColumnValue<String, String> heureFin(String? value) => _i1.ColumnValue(
    table.heureFin,
    value,
  );

  _i1.ColumnValue<bool, bool> estTerminee(bool value) => _i1.ColumnValue(
    table.estTerminee,
    value,
  );

  _i1.ColumnValue<int, int> gadgetsPrevus(int value) => _i1.ColumnValue(
    table.gadgetsPrevus,
    value,
  );

  _i1.ColumnValue<int, int> gadgetsDistribues(int value) => _i1.ColumnValue(
    table.gadgetsDistribues,
    value,
  );

  _i1.ColumnValue<double, double> totalLogistique(double value) =>
      _i1.ColumnValue(
        table.totalLogistique,
        value,
      );

  _i1.ColumnValue<int, int> nbParticipantsEstime(int? value) => _i1.ColumnValue(
    table.nbParticipantsEstime,
    value,
  );

  _i1.ColumnValue<bool, bool> evaluation(bool value) => _i1.ColumnValue(
    table.evaluation,
    value,
  );
}

class SeanceTable extends _i1.Table<int?> {
  SeanceTable({super.tableRelation}) : super(tableName: 'seance') {
    updateTable = SeanceUpdateTable(this);
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    motifs = _i1.ColumnString(
      'motifs',
      this,
    );
    typeSeance = _i1.ColumnString(
      'typeSeance',
      this,
    );
    cible = _i1.ColumnString(
      'cible',
      this,
    );
    zone = _i1.ColumnString(
      'zone',
      this,
    );
    ville = _i1.ColumnString(
      'ville',
      this,
    );
    quartier = _i1.ColumnString(
      'quartier',
      this,
    );
    objectifParticipants = _i1.ColumnInt(
      'objectifParticipants',
      this,
    );
    organisateur = _i1.ColumnString(
      'organisateur',
      this,
    );
    presentateur = _i1.ColumnString(
      'presentateur',
      this,
    );
    assistants = _i1.ColumnSerializable<List<String>>(
      'assistants',
      this,
    );
    datePrevue = _i1.ColumnDateTime(
      'datePrevue',
      this,
    );
    heureDebut = _i1.ColumnString(
      'heureDebut',
      this,
    );
    heureFin = _i1.ColumnString(
      'heureFin',
      this,
    );
    estTerminee = _i1.ColumnBool(
      'estTerminee',
      this,
    );
    gadgetsPrevus = _i1.ColumnInt(
      'gadgetsPrevus',
      this,
    );
    gadgetsDistribues = _i1.ColumnInt(
      'gadgetsDistribues',
      this,
    );
    totalLogistique = _i1.ColumnDouble(
      'totalLogistique',
      this,
    );
    nbParticipantsEstime = _i1.ColumnInt(
      'nbParticipantsEstime',
      this,
    );
    evaluation = _i1.ColumnBool(
      'evaluation',
      this,
    );
  }

  late final SeanceUpdateTable updateTable;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString motifs;

  late final _i1.ColumnString typeSeance;

  late final _i1.ColumnString cible;

  late final _i1.ColumnString zone;

  late final _i1.ColumnString ville;

  late final _i1.ColumnString quartier;

  late final _i1.ColumnInt objectifParticipants;

  late final _i1.ColumnString organisateur;

  late final _i1.ColumnString presentateur;

  late final _i1.ColumnSerializable<List<String>> assistants;

  late final _i1.ColumnDateTime datePrevue;

  late final _i1.ColumnString heureDebut;

  late final _i1.ColumnString heureFin;

  late final _i1.ColumnBool estTerminee;

  late final _i1.ColumnInt gadgetsPrevus;

  late final _i1.ColumnInt gadgetsDistribues;

  late final _i1.ColumnDouble totalLogistique;

  late final _i1.ColumnInt nbParticipantsEstime;

  late final _i1.ColumnBool evaluation;

  @override
  List<_i1.Column> get columns => [
    id,
    nom,
    motifs,
    typeSeance,
    cible,
    zone,
    ville,
    quartier,
    objectifParticipants,
    organisateur,
    presentateur,
    assistants,
    datePrevue,
    heureDebut,
    heureFin,
    estTerminee,
    gadgetsPrevus,
    gadgetsDistribues,
    totalLogistique,
    nbParticipantsEstime,
    evaluation,
  ];
}

class SeanceInclude extends _i1.IncludeObject {
  SeanceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Seance.t;
}

class SeanceIncludeList extends _i1.IncludeList {
  SeanceIncludeList._({
    _i1.WhereExpressionBuilder<SeanceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Seance.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Seance.t;
}

class SeanceRepository {
  const SeanceRepository._();

  /// Returns a list of [Seance]s matching the given query parameters.
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
  Future<List<Seance>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SeanceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeanceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeanceTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Seance>(
      where: where?.call(Seance.t),
      orderBy: orderBy?.call(Seance.t),
      orderByList: orderByList?.call(Seance.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Seance] matching the given query parameters.
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
  Future<Seance?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SeanceTable>? where,
    int? offset,
    _i1.OrderByBuilder<SeanceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeanceTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Seance>(
      where: where?.call(Seance.t),
      orderBy: orderBy?.call(Seance.t),
      orderByList: orderByList?.call(Seance.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Seance] by its [id] or null if no such row exists.
  Future<Seance?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Seance>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Seance]s in the list and returns the inserted rows.
  ///
  /// The returned [Seance]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Seance>> insert(
    _i1.DatabaseSession session,
    List<Seance> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Seance>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Seance] and returns the inserted row.
  ///
  /// The returned [Seance] will have its `id` field set.
  Future<Seance> insertRow(
    _i1.DatabaseSession session,
    Seance row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Seance>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Seance]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Seance>> update(
    _i1.DatabaseSession session,
    List<Seance> rows, {
    _i1.ColumnSelections<SeanceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Seance>(
      rows,
      columns: columns?.call(Seance.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Seance]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Seance> updateRow(
    _i1.DatabaseSession session,
    Seance row, {
    _i1.ColumnSelections<SeanceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Seance>(
      row,
      columns: columns?.call(Seance.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Seance] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Seance?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<SeanceUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Seance>(
      id,
      columnValues: columnValues(Seance.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Seance]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Seance>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<SeanceUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SeanceTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeanceTable>? orderBy,
    _i1.OrderByListBuilder<SeanceTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Seance>(
      columnValues: columnValues(Seance.t.updateTable),
      where: where(Seance.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Seance.t),
      orderByList: orderByList?.call(Seance.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Seance]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Seance>> delete(
    _i1.DatabaseSession session,
    List<Seance> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Seance>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Seance].
  Future<Seance> deleteRow(
    _i1.DatabaseSession session,
    Seance row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Seance>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Seance>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SeanceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Seance>(
      where: where(Seance.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<SeanceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Seance>(
      where: where?.call(Seance.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Seance] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<SeanceTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Seance>(
      where: where(Seance.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
