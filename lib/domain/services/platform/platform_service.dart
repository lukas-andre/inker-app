import 'package:flutter/foundation.dart';

abstract class PlatformService {
  bool get isIOS;
  bool get isAndroid;
  bool get isWeb;
  bool get isMobile;
  String get operatingSystem;
  bool get hasNotch;
}

class PlatformServiceImpl implements PlatformService {
  @override
  bool get isIOS => !kIsWeb && defaultTargetPlatform == TargetPlatform.iOS;

  @override
  bool get isAndroid => !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  @override
  bool get isWeb => kIsWeb;

  @override
  bool get isMobile => isIOS || isAndroid;

  @override
  String get operatingSystem {
    if (kIsWeb) return 'web';
    if (defaultTargetPlatform == TargetPlatform.iOS) return 'ios';
    if (defaultTargetPlatform == TargetPlatform.android) return 'android';
    return 'unknown';
  }

  @override
  bool get hasNotch {
    // En web, asumimos que no hay notch
    if (kIsWeb) return false;
    
    // Para iOS, en mobile apps podemos detectar el notch a través del SafeArea
    // Para Android, la mayoría de dispositivos modernos tienen algún tipo de notch
    // Por simplicidad, asumimos true para mobile devices
    return isMobile;
  }
}