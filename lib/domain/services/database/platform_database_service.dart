abstract class PlatformDatabaseService {
  Future<void> initDB();
  
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
  });

  Future<List<Map<String, dynamic>>> rawQuery(String sql, [List<Object?>? arguments]);

  Future<int> insert(
    String table,
    Map<String, dynamic> data, {
    String? nullColumnHack,
    bool? replace,
  });

  Future<int> update(
    String table,
    Map<String, dynamic> values, {
    String? where,
    List<Object?>? whereArgs,
  });

  Future<int> delete(
    String table, {
    String? where,
    List<Object?>? whereArgs,
  });
  
  Future<void> resetDatabase();
  Future<void> closeDatabase();
}