class CustomerTable {
  static const String name = 'Customer';

  static const String createTableQuery = '''
      CREATE TABLE $name(
        id INTEGER PRIMARY KEY,
        userId INTEGER,
        firstName TEXT,
        lastName TEXT,
        contactPhoneNumber TEXT,
        contactEmail TEXT,
        shortDescription TEXT,
        profileThumbnail TEXT,
        follows TEXT,
        rating INTEGER,
        createdAt TEXT,
        updatedAt TEXT
      );
    ''';
}
