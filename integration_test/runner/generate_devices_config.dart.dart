import 'dart:convert';
import 'dart:io';

class Device {
  final String name;
  final String id;
  final String platform;

  Device({
    required this.name,
    required this.id,
    required this.platform,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'platform': platform,
  };
}

class DeviceConfigGenerator {
  static const String configPath = 'integration_test/config/devices.json';

  Future<List<Device>> getConnectedDevices() async {
    final result = await Process.run('patrol', ['devices']);
    if (result.exitCode != 0) {
      throw Exception('Failed to get devices: ${result.stderr}');
    }

    final devices = <Device>[];
    final lines = (result.stdout as String).split('\n');
    
    // Saltamos las primeras líneas que son sobre actualización
    var startIndex = lines.indexWhere((line) => 
      !line.contains('Update available') && 
      !line.contains('Run patrol update')
    );
    
    if (startIndex == -1) startIndex = 0;
    
    for (var i = startIndex; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) continue;

      // Parse device info
      final deviceInfo = _parseDeviceLine(line);
      if (deviceInfo != null) {
        devices.add(deviceInfo);
      }
    }

    return devices;
  }

  Device? _parseDeviceLine(String line) {
    // El formato esperado es "device_name (device_id)"
    final match = RegExp(r'^(.*?)\s*\((.*?)\)$').firstMatch(line);
    if (match == null) return null;

    final name = match.group(1)?.trim() ?? '';
    final id = match.group(2)?.trim() ?? '';

    // Determinar la plataforma basado en el nombre/id
    String platform;
    if (id == 'macos' || id.contains('mac-designed')) {
      platform = 'macos';
    } else if (id.startsWith('emulator-') || name.toLowerCase().contains('sdk')) {
      platform = 'android';
    } else if (name.contains('iPhone') || name.contains('iPad')) {
      platform = 'ios';
    } else {
      platform = 'unknown';
    }

    return Device(
      name: name,
      id: id,
      platform: platform,
    );
  }

  Future<void> generateConfig() async {
    final devices = await getConnectedDevices();
    
    // Agrupar dispositivos por plataforma
    final config = {
      'android': <String, String>{},
      'ios': <String, String>{},
      'macos': <String, String>{},
    };

    for (final device in devices) {
      if (device.platform == 'unknown') continue;
      
      // Crear un nombre amigable
      var friendlyName = device.name
          .toLowerCase()
          .replaceAll(RegExp(r'[^a-z0-9]'), '_')
          .replaceAll(RegExp(r'_+'), '_')
          .replaceAll(RegExp(r'^_|_$'), '');
      
      config[device.platform]?[friendlyName] = device.id;
    }

    // Crear directorio si no existe
    final configFile = File(configPath);
    if (!await configFile.parent.exists()) {
      await configFile.parent.create(recursive: true);
    }

    // Escribir archivo de configuración
    await configFile.writeAsString(
      const JsonEncoder.withIndent('  ').convert(config),
    );

    print('\x1B[32mDevice configuration generated at $configPath\x1B[0m');
    print('\nDetected devices:');
    for (final device in devices) {
      print('\x1B[33m${device.platform}:\x1B[0m ${device.name} (${device.id})');
    }
  }
}

void main() async {
  try {
    final generator = DeviceConfigGenerator();
    await generator.generateConfig();
  } catch (e) {
    print('\x1B[31mError generating config: $e\x1B[0m');
    exit(1);
  }
}