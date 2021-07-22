import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseService {
  static Database? _database;
  static final String sessionDatabaseName = 'Session';

  static final DatabaseService instance = DatabaseService._();

  DatabaseService._();

  Future<Database> get database async {
    print('database: $_database');

    if (_database != null) {
      return _database!;
    }

    _database = await initDB();

    return _database!;
  }

  _onCreate(Database db, int version) async {
    print('_onCreate');
    await db.execute('''
      CREATE TABLE $sessionDatabaseName(
        id INTEGER PRIMARY KEY,
        user TEXT,
        accessToken TEXT,
        expireIn TEXT
      );
    ''');
  }

  _onUpdate(Database db, int oldVersion, int newVersion) async {
    print('_onUpdate');
    // WARNING: NUNCA HACER ESTO EN PRODUCCION, SE BORRARAN TODOS LOS DATOS
    // await db.execute('''
    //   DROP TABLE IF EXISTS Scans
    // ''');
    await _onCreate(db, newVersion);
  }

  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'Master.db');

    final db = await openDatabase(path,
        version: 6, onOpen: (db) {}, onCreate: _onCreate, onUpgrade: _onUpdate);
    Sqflite.devSetDebugModeOn(true);
    return db;
  }

  Future<List<Map<String, Object?>>> query(String table,
      {bool? distinct,
      List<String>? columns,
      String? where,
      List<Object?>? whereArgs,
      String? groupBy,
      String? having,
      String? orderBy,
      int? limit,
      int? offset}) async {
    final db = await database;
    final result = await db.query(table,
        columns: columns,
        where: where,
        groupBy: groupBy,
        having: having,
        orderBy: orderBy,
        limit: limit,
        offset: offset,
        distinct: distinct);
    return result;
  }

  Future<dynamic> rawQuery(String sql, [List<Object?>? arguments]) async {
    final db = await database;
    final result = await db.rawQuery(sql, arguments);
    return result;
  }

  Future<int> insert(
    String databaseName,
    Map<String, dynamic> data, {
    String? nullColumnHack,
    ConflictAlgorithm? conflictAlgorithm,
  }) async {
    final db = await database;
    final result = await db.insert(databaseName, data,
        nullColumnHack: nullColumnHack, conflictAlgorithm: conflictAlgorithm);
    return result;
  }

  Future<dynamic> update(
    String databaseName,
    Map<String, dynamic> values, {
    String? where,
    List<Object?>? whereArgs,
    ConflictAlgorithm? conflictAlgorithm,
  }) async {
    final db = await database;
    final result = await db.update(databaseName, values,
        where: where,
        whereArgs: whereArgs,
        conflictAlgorithm: conflictAlgorithm);

    return result;
  }

  Future<dynamic> delete(
    String databaseName, {
    String? where,
    List<Object?>? whereArgs,
  }) async {
    final db = await database;
    final result =
        await db.delete(databaseName, where: where, whereArgs: whereArgs);
    return result;
  }
}
