import 'package:inker_studio/data/local/sqlite/core/tables/sqlite_table.dart';

final SqliteTable tokenBalanceTable = TokenBalanceTable();

class TokenBalanceTable implements SqliteTable {
  final String _name = 'TokenBalance';

  @override
  String getCreateTableQuery() {
    return '''
      CREATE TABLE ${getName()}(
        id TEXT PRIMARY KEY,
        userId TEXT NOT NULL,
        balance INTEGER NOT NULL,
        totalPurchased INTEGER NOT NULL,
        totalConsumed INTEGER NOT NULL,
        totalGranted INTEGER NOT NULL,
        lastPurchaseAt INTEGER,
        lastSyncAt INTEGER NOT NULL,
        createdAt INTEGER NOT NULL,
        updatedAt INTEGER NOT NULL
      );
    ''';
  }

  @override
  String getName() {
    return _name;
  }
}