import 'package:inker_studio/data/local/sqlite/core/tables/sqlite_table.dart';

final SqliteTable customerTable = CustomerTable();

class CustomerTable implements SqliteTable {
  static const String _name = 'Customer';

  @override
  String getCreateTableQuery() {
    return '''
      CREATE TABLE ${getName()}(
        id TEXT PRIMARY KEY,
        userId TEXT,
        firstName TEXT,
        lastName TEXT,
        contactPhoneNumber TEXT,
        contactEmail TEXT,
        shortDescription TEXT,
        profileThumbnail TEXT,
        follows TEXT,
        rating INTEGER,
        createdAt INTEGER,
        updatedAt INTEGER
      );
    ''';
  }

  @override
  String getName() {
    return _name;
  }
}
