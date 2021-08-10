class SessionTable {
  static const String name = 'Session';

  static const String createTableQuery = '''
      CREATE TABLE $name(
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
