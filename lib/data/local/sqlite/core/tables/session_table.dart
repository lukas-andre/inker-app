import 'package:inker_studio/data/local/sqlite/core/tables/sqlite_table.dart';

final SqliteTable sessionTable = SessionTable();

class SessionTable implements SqliteTable {
  final String _name = 'Session';

  @override
  String getCreateTableQuery() {
    return '''
      CREATE TABLE ${getName()}(
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

  @override
  String getName() {
    return _name;
  }
}
