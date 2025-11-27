import 'dart:convert';
import 'dart:io';
import 'dart:math';

class TestUserManager {
  static const String _userDataFilePath =
      'integration_test/data/test_users.json';
  static const String _defaultPassword = 'admin1';
  static final List<Map<String, dynamic>> _users = [];
  static bool _initialized = false;
  static bool _isReadOnlyFileSystem = false;

  static Future<void> initialize() async {
    if (_initialized) return;

    try {
      final directory = Directory('integration_test/data');
      if (!await directory.exists()) {
        try {
          await directory.create(recursive: true);
        } catch (e) {
          _isReadOnlyFileSystem = true;
          print(
              'Warning: Using in-memory storage for test users due to read-only file system');
          _initialized = true;
          return;
        }
      }

      final file = File(_userDataFilePath);
      if (!await file.exists()) {
        try {
          await file.writeAsString('[]');
        } catch (e) {
          _isReadOnlyFileSystem = true;
          print(
              'Warning: Using in-memory storage for test users due to read-only file system');
          _initialized = true;
          return;
        }
      } else {
        try {
          final content = await file.readAsString();
          final List<dynamic> usersJson = json.decode(content);
          _users.clear();
          _users.addAll(usersJson.cast<Map<String, dynamic>>());
        } catch (e) {
          print(
              'Warning: Could not read test users file, starting with empty list');
        }
      }
    } catch (e) {
      _isReadOnlyFileSystem = true;
      print(
          'Warning: Using in-memory storage for test users due to read-only file system');
    }

    _initialized = true;
  }

  static Future<Map<String, dynamic>> generateUniqueUser({
    String? customName,
    String? customLastName,
  }) async {
    await initialize();

    final random = Random();

    final nameOptions = [
      'Juan',
      'Pedro',
      'Maria',
      'Ana',
      'Carlos',
      'Sofia',
      'Luis',
      'Laura',
      'Miguel',
      'Carmen',
      'Jose',
      'Patricia',
      'Alberto',
      'Monica',
      'Roberto',
      'Lucia',
      'Daniel',
      'Paula',
      'Alejandro',
      'Claudia',
      'Mario',
      'Diana'
    ];

    final lastNameOptions = [
      'Garcia',
      'Lopez',
      'Martinez',
      'Rodriguez',
      'Gonzalez',
      'Fernandez',
      'Sanchez',
      'Perez',
      'Gomez',
      'Martin',
      'Jimenez',
      'Ruiz',
      'Diaz',
      'Hernandez',
      'Moreno',
      'Alvarez',
      'Romero',
      'Alonso',
      'Castro',
      'Suarez'
    ];

    final firstName =
        customName ?? nameOptions[random.nextInt(nameOptions.length)];
    final lastName = customLastName ??
        lastNameOptions[random.nextInt(lastNameOptions.length)];

    final suffix = random.nextInt(10000);
    final email =
        '${firstName.toLowerCase()}.${lastName.toLowerCase()}$suffix@example.com';

    final userData = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': '9${(90000000 + random.nextInt(9999999)).toString()}',
      'password': _defaultPassword,
      'createdAt': DateTime.now().toIso8601String(),
    };

    _users.add(userData);
    await _saveUsers();

    return userData;
  }

  static Future<void> _saveUsers() async {
    if (_isReadOnlyFileSystem) {
      return;
    }

    try {
      final directory = Directory('integration_test/data');
      if (!await directory.exists()) {
        try {
          await directory.create(recursive: true);
        } catch (e) {
          _isReadOnlyFileSystem = true;
          print(
              'Warning: Using in-memory storage for test users due to read-only file system');
          return;
        }
      }

      final file = File(_userDataFilePath);
      try {
        await file.writeAsString(json.encode(_users));
      } catch (e) {
        _isReadOnlyFileSystem = true;
        print(
            'Warning: Could not save test users to disk, using in-memory storage');
      }
    } catch (e) {
      _isReadOnlyFileSystem = true;
      print(
          'Warning: Using in-memory storage for test users due to read-only file system');
    }
  }

  static List<Map<String, dynamic>> get users => List.unmodifiable(_users);

  static Future<bool> isReadOnlyFileSystem() async {
    return _isReadOnlyFileSystem;
  }

  static Future<void> saveUser(Map<String, dynamic> userData) async {
    if (_isReadOnlyFileSystem) {
      return;
    }

    try {
      final directory = Directory('integration_test/data');
      if (!await directory.exists()) {
        try {
          await directory.create(recursive: true);
        } catch (e) {
          _isReadOnlyFileSystem = true;
          print(
              'Warning: Using in-memory storage for test users due to read-only file system');
          return;
        }
      }

      final file = File(_userDataFilePath);
      try {
        final users = await _loadUsers();
        users.add(userData);
        await file.writeAsString(json.encode(users));
      } catch (e) {
        _isReadOnlyFileSystem = true;
        print(
            'Warning: Could not save test users to disk, using in-memory storage');
      }
    } catch (e) {
      _isReadOnlyFileSystem = true;
      print(
          'Warning: Using in-memory storage for test users due to read-only file system');
    }
  }

  static Future<List<Map<String, dynamic>>> _loadUsers() async {
    if (_isReadOnlyFileSystem) {
      return [];
    }

    try {
      final file = File(_userDataFilePath);
      final content = await file.readAsString();
      final List<dynamic> usersJson = json.decode(content);
      return usersJson.cast<Map<String, dynamic>>();
    } catch (e) {
      print(
          'Warning: Could not read test users file, starting with empty list');
      return [];
    }
  }
} 