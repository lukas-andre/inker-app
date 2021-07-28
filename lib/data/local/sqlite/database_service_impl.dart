// ignore_for_file: deprecated_member_use

import 'dart:io' show Directory;

import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;

import 'package:sqflite/sqflite.dart'
    show Database, openDatabase, Sqflite, ConflictAlgorithm;

import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/timestamp_column_helper.dart';

class DatabaseServiceImpl {
  static const String className = 'DatabaseService';
  static const String sessionDatabaseName = 'Session';

  static Database? _database;

  static final DatabaseServiceImpl instance = DatabaseServiceImpl._();

  DatabaseServiceImpl._();

  Future<Database> get database async {
    dev.log('get database: $_database', className, 'database');

    if (_database != null) {
      return _database!;
    }
    dev.log('initializing database...', className, 'database');

    _database = await initDB();
    dev.log('database: $_database', className, 'database');

    return _database!;
  }

  _onCreate(Database db, int version) async {
    dev.log('db: $db version: $version', className, '_onCreate');

    final createSessionTableQuery = _getSessionCreateTableQuery();

    await db.execute('''
      $createSessionTableQuery
    ''');
  }

  String _getSessionCreateTableQuery() {
    return '''
      CREATE TABLE $sessionDatabaseName(
        id INTEGER PRIMARY KEY,
        user TEXT,
        accessToken TEXT,
        sessionType TEXT,
        expireIn TEXT,
        isActive INTEGER,
        createdAt TEXT,
        updatedAt TEXT
      );
    ''';
  }

  _onUpdate(Database db, int oldVersion, int newVersion) async {
    dev.log('db: $db oldVersion: $oldVersion newVersion: $newVersion',
        className, '_onUpdate');

    // ! NUNCA HACER ESTO EN PRODUCCION, SE BORRARAN TODOS LOS DATOS
    await db.execute('''
      DROP TABLE IF EXISTS $sessionDatabaseName
    ''');
    await _onCreate(db, newVersion);
  }

  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    // ! Remove for production
    final path = join(documentsDirectory.path, 'Master.db');

    Sqflite.devSetDebugModeOn(true);
    final db = await openDatabase(path,
        version: 14,
        onOpen: (db) {},
        onCreate: _onCreate,
        onUpgrade: _onUpdate);
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
    return await db.query(table,
        columns: columns,
        where: where,
        whereArgs: whereArgs,
        groupBy: groupBy,
        having: having,
        orderBy: orderBy,
        limit: limit,
        offset: offset,
        distinct: distinct);
  }

  Future<dynamic> rawQuery(String sql, [List<Object?>? arguments]) async {
    final db = await database;
    return await db.rawQuery(sql, arguments);
  }

  Future<int> insert(
    String databaseName,
    Map<String, dynamic> data, {
    String? nullColumnHack,
    ConflictAlgorithm? conflictAlgorithm,
  }) async {
    final db = await database;

    data = TimestampColumnHelper.setColumns(data, true);

    return await db.insert(databaseName, data,
        nullColumnHack: nullColumnHack, conflictAlgorithm: conflictAlgorithm);
  }

  Future<int> update(
    String databaseName,
    Map<String, dynamic> values, {
    String? where,
    List<Object?>? whereArgs,
    ConflictAlgorithm? conflictAlgorithm,
  }) async {
    final db = await database;

    values = TimestampColumnHelper.setColumns(values, false);

    return await db.update(databaseName, values,
        where: where,
        whereArgs: whereArgs,
        conflictAlgorithm: conflictAlgorithm);
  }

  Future<int> delete(
    String databaseName, {
    String? where,
    List<Object?>? whereArgs,
  }) async {
    final db = await database;
    return await db.delete(databaseName, where: where, whereArgs: whereArgs);
  }
}
