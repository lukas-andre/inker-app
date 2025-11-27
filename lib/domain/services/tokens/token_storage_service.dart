import 'package:inker_studio/domain/models/tokens/token_balance.dart';
import 'package:inker_studio/domain/services/database/platform_database_service.dart';

abstract class TokenStorageService {
  Future<void> saveBalance(TokenBalance balance, String userId);
  Future<TokenBalance?> getBalance(String userId);
  Future<void> clearBalance(String userId);
}

class TokenStorageServiceImpl implements TokenStorageService {
  final PlatformDatabaseService _database;
  
  static const String _tableName = 'TokenBalance';
  
  TokenStorageServiceImpl(this._database);
  
  @override
  Future<void> saveBalance(TokenBalance balance, String userId) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    
    final data = {
      'id': userId,
      'userId': userId,
      'balance': balance.balance,
      'totalPurchased': balance.totalPurchased,
      'totalConsumed': balance.totalConsumed,
      'totalGranted': balance.totalGranted,
      'lastPurchaseAt': balance.lastPurchaseAt?.millisecondsSinceEpoch,
      'lastSyncAt': now,
      'updatedAt': now,
    };
    
    // Check if record exists
    final existing = await _database.query(
      _tableName,
      where: 'userId = ?',
      whereArgs: [userId],
    );
    
    if (existing.isNotEmpty) {
      // Update existing record
      await _database.update(
        _tableName,
        data,
        where: 'userId = ?',
        whereArgs: [userId],
      );
    } else {
      // Insert new record
      data['createdAt'] = now;
      await _database.insert(_tableName, data);
    }
  }
  
  @override
  Future<TokenBalance?> getBalance(String userId) async {
    final results = await _database.query(
      _tableName,
      where: 'userId = ?',
      whereArgs: [userId],
      limit: 1,
    );
    
    if (results.isEmpty) {
      return null;
    }
    
    final row = results.first;
    return TokenBalance(
      balance: row['balance'] as int,
      totalPurchased: row['totalPurchased'] as int,
      totalConsumed: row['totalConsumed'] as int,
      totalGranted: row['totalGranted'] as int,
      lastPurchaseAt: row['lastPurchaseAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(row['lastPurchaseAt'] as int)
          : null,
    );
  }
  
  @override
  Future<void> clearBalance(String userId) async {
    await _database.delete(
      _tableName,
      where: 'userId = ?',
      whereArgs: [userId],
    );
  }
}