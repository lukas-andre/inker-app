import 'package:sqflite/sqflite.dart' show Database, ConflictAlgorithm;

abstract class DatabaseService {
  Future<Database> get database;

  Future<Database> initDB();

  Future<List<Map<String, Object?>>> query(String table,
      {bool? distinct,
      List<String>? columns,
      String? where,
      List<Object?>? whereArgs,
      String? groupBy,
      String? having,
      String? orderBy,
      int? limit,
      int? offset});

  Future<dynamic> rawQuery(String sql, [List<Object?>? arguments]);

  Future<int> insert(
    String databaseName,
    Map<String, dynamic> data, {
    String? nullColumnHack,
    ConflictAlgorithm? conflictAlgorithm,
  });

  Future<dynamic> update(
    String databaseName,
    Map<String, dynamic> values, {
    String? where,
    List<Object?>? whereArgs,
    ConflictAlgorithm? conflictAlgorithm,
  });

  Future<dynamic> delete(
    String databaseName, {
    String? where,
    List<Object?>? whereArgs,
  });
}
