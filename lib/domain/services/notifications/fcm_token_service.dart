import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:inker_studio/utils/dev.dart';

class FcmTokenService {
  static FcmTokenService? _instance;
  static FcmTokenService get instance => _instance ??= FcmTokenService._();
  
  FcmTokenService._();
  
  String? _token;
  bool _isInitializing = false;
  final List<Function(String?)> _listeners = [];
  
  String? get token => _token;
  bool get hasToken => _token != null && _token!.isNotEmpty;
  
  // Initialize token asynchronously
  Future<void> initialize() async {
    if (_isInitializing || _token != null) return;
    
    _isInitializing = true;
    
    try {
      // Don't await this in main.dart, let it run in background
      _token = await FirebaseMessaging.instance.getToken();
      dev.log('FCM token obtained: ${_token ?? 'null'}', 'FcmTokenService');
      
      // Notify all listeners
      for (final listener in _listeners) {
        listener(_token);
      }
    } catch (e) {
      dev.log('Failed to get FCM token: $e', 'FcmTokenService');
      _token = '';
    } finally {
      _isInitializing = false;
    }
  }
  
  // Get token with retry logic
  Future<String> getTokenWithRetry({int maxRetries = 3}) async {
    if (_token != null) return _token!;
    
    for (int i = 0; i < maxRetries; i++) {
      try {
        await initialize();
        if (_token != null) return _token!;
        
        // Wait before retry
        await Future.delayed(Duration(seconds: i + 1));
      } catch (e) {
        dev.log('Retry $i failed: $e', 'FcmTokenService');
      }
    }
    
    return '';
  }
  
  // Listen for token updates
  void addListener(Function(String?) listener) {
    _listeners.add(listener);
    // If token is already available, notify immediately
    if (_token != null) {
      listener(_token);
    }
  }
  
  void removeListener(Function(String?) listener) {
    _listeners.remove(listener);
  }
  
  // Clear token (useful for logout)
  void clear() {
    _token = null;
  }
}