import 'package:inker_studio/data/local/sqlite/core/tables/customer_table.dart';
import 'package:inker_studio/data/local/sqlite/core/tables/session_table.dart';
import 'package:inker_studio/data/local/sqlite/core/tables/token_balance_table.dart';
import 'package:inker_studio/domain/services/database/platform_database_service.dart';
import 'package:inker_studio/utils/timestamp_column_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class WebDatabaseService implements PlatformDatabaseService {
  static const String _databaseName = 'inker_studio.db';
  static const int _databaseVersion = 26;
  
  Database? _database;
  
  static final WebDatabaseService instance = WebDatabaseService._();
  WebDatabaseService._();
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    await initDB();
    return _database!;
  }
  
  @override
  Future<void> initDB() async {
    // Change default factory to web
    databaseFactory = databaseFactoryFfiWeb;
    
    _database = await openDatabase(
      _databaseName,
      version: _databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpdate,
    );
  }
  
  Future<void> _onCreate(Database db, int version) async {
    // Create session table
    await db.execute(sessionTable.getCreateTableQuery());
    
    // Create customer table
    await db.execute(customerTable.getCreateTableQuery());
    
    // Create token balance table
    await db.execute(tokenBalanceTable.getCreateTableQuery());
  }
  
  Future<void> _onUpdate(Database db, int oldVersion, int newVersion) async {
    // Drop existing tables
    await db.execute('DROP TABLE IF EXISTS ${sessionTable.getName()}');
    await db.execute('DROP TABLE IF EXISTS ${customerTable.getName()}');
    await db.execute('DROP TABLE IF EXISTS ${tokenBalanceTable.getName()}');
    
    // Recreate tables
    await _onCreate(db, newVersion);
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
    final db = await database;
    final results = await db.query(
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
    final db = await database;
    final results = await db.rawQuery(sql, arguments);
    return results.map((e) => Map<String, dynamic>.from(e)).toList();
  }
  
  @override
  Future<int> insert(
    String table,
    Map<String, dynamic> data, {
    String? nullColumnHack,
    bool? replace = false,
  }) async {
    final db = await database;
    data = TimestampColumnHelper.setColumns(data, true);
    return await db.insert(
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
    final db = await database;
    values = TimestampColumnHelper.setColumns(values, false);
    return await db.update(
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
    final db = await database;
    return await db.delete(
      table,
      where: where,
      whereArgs: whereArgs,
    );
  }
  
  @override
  Future<void> resetDatabase() async {
    final db = await database;
    await db.execute('DROP TABLE IF EXISTS ${sessionTable.getName()}');
    await db.execute('DROP TABLE IF EXISTS ${customerTable.getName()}');
    await db.execute('DROP TABLE IF EXISTS ${tokenBalanceTable.getName()}');
    await _onCreate(db, _databaseVersion);
  }
  
  @override
  Future<void> closeDatabase() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
    }
  }
}