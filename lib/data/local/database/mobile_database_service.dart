import 'package:inker_studio/data/local/sqlite/core/sqlite_service.dart';
import 'package:inker_studio/domain/services/database/platform_database_service.dart';
import 'package:sqflite/sqflite.dart';

class MobileDatabaseService implements PlatformDatabaseService {
  final SqliteService _sqliteService = SqliteService.instance;
  
  @override
  Future<void> initDB() async {
    await _sqliteService.initDB();
  }
  
  @override
  Future<List<Map<String, dynamic>>> query(
    String table, {
    bool? distinct,
    List<String>? columns,
    String? where,
    List<Object?>? whereArgs,
    String? groupBy,
    String? having,
    String? orderBy,
    int? limit,
    int? offset,
  }) async {
    final results = await _sqliteService.query(
      table,
      distinct: distinct,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
      groupBy: groupBy,
      having: having,
      orderBy: orderBy,
      limit: limit,
      offset: offset,
    );
    return results.map((e) => Map<String, dynamic>.from(e)).toList();
  }
  
  @override
  Future<List<Map<String, dynamic>>> rawQuery(String sql, [List<Object?>? arguments]) async {
    final results = await _sqliteService.rawQuery(sql, arguments);
    if (results is List) {
      return results.map((e) => Map<String, dynamic>.from(e as Map)).toList();
    }
    return [];
  }
  
  @override
  Future<int> insert(
    String table,
    Map<String, dynamic> data, {
    String? nullColumnHack,
    bool? replace = false,
  }) async {
    return await _sqliteService.insert(
      table,
      data,
      nullColumnHack: nullColumnHack,
      conflictAlgorithm: replace == true ? ConflictAlgorithm.replace : null,
    );
  }
  
  @override
  Future<int> update(
    String table,
    Map<String, dynamic> values, {
    String? where,
    List<Object?>? whereArgs,
  }) async {
    return await _sqliteService.update(
      table,
      values,
      where: where,
      whereArgs: whereArgs,
    );
  }
  
  @override
  Future<int> delete(
    String table, {
    String? where,
    List<Object?>? whereArgs,
  }) async {
    return await _sqliteService.delete(
      table,
      where: where,
      whereArgs: whereArgs,
    );
  }
  
  @override
  Future<void> resetDatabase() async {
    await _sqliteService.resetDatabase();
  }
  
  @override
  Future<void> closeDatabase() async {
    await _sqliteService.closeDatabase();
  }
}