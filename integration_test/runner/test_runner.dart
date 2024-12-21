import 'dart:convert';
import 'dart:io';

class DeviceConfig {
  final Map<String, String> android;
  final Map<String, String> ios;

  DeviceConfig({required this.android, required this.ios});

  factory DeviceConfig.fromJson(Map<String, dynamic> json) {
    return DeviceConfig(
      android: Map<String, String>.from(json['android'] ?? {}),
      ios: Map<String, String>.from(json['ios'] ?? {}),
    );
  }
}

class TestRunner {
  static const String configPath = 'integration_test/config/devices.json';

  final DeviceConfig config;
  Process? _currentProcess;
  bool _isShuttingDown = false;

  TestRunner(this.config) {
    // Configurar el manejador de señales
    ProcessSignal.sigint.watch().listen(_handleSignal);
  }

  void _handleSignal(ProcessSignal signal) async {
    if (_isShuttingDown) return;
    _isShuttingDown = true;

    print('\n\x1B[33mReceived interrupt signal, cleaning up...\x1B[0m');

    if (_currentProcess != null) {
      print('\x1B[33mStopping current test...\x1B[0m');
      _currentProcess!.kill();
      await _currentProcess!.exitCode;
    }

    print('\x1B[32mCleanup complete, exiting.\x1B[0m');
    exit(0);
  }

  Future<void> runTest(String user, String flow, String deviceName,
      {bool verbose = false}) async {
    final deviceId = getDeviceId(deviceName);
    if (deviceId == null) {
      print('\x1B[31mInvalid device: $deviceName\x1B[0m');
      listDevices();
      exit(1);
    }

    try {
      final testFile = getTestPath(user, flow);
      final cmd =
          'patrol test -t integration_test/$testFile -d $deviceId${verbose ? ' --verbose' : ''}';

      print(
          '\x1B[32mRunning $user $flow flow on device $deviceName ($deviceId)\x1B[0m');

      // Usar Process.start en lugar de Process.run para mantener una referencia al proceso
      _currentProcess = await Process.start('sh', ['-c', cmd]);

      // Redirigir stdout y stderr
      _currentProcess!.stdout.listen((data) => stdout.add(data));
      _currentProcess!.stderr.listen((data) => stderr.add(data));

      // Esperar a que termine el proceso
      final exitCode = await _currentProcess!.exitCode;
      _currentProcess = null;

      if (exitCode != 0) {
        print('\x1B[31mTest failed with exit code $exitCode\x1B[0m');
        exit(exitCode);
      }
    } catch (e) {
      print('\x1B[31mError running test: $e\x1B[0m');
      exit(1);
    }
  }

  static Future<TestRunner> create() async {
    final file = File(configPath);
    if (!await file.exists()) {
      throw Exception('Config file not found at $configPath');
    }

    final jsonContent = await file.readAsString();
    final json = jsonDecode(jsonContent);
    return TestRunner(DeviceConfig.fromJson(json));
  }

  String? getDeviceId(String friendlyName) {
    if (friendlyName == 'all') return 'all';

    return config.android[friendlyName] ?? config.ios[friendlyName];
  }

  void listDevices() {
    print('\x1B[32mAvailable devices:\x1B[0m');

    print('\x1B[33mAndroid:\x1B[0m');
    config.android.forEach((key, value) {
      print('  $key -> $value');
    });

    print('\x1B[33miOS:\x1B[0m');
    config.ios.forEach((key, value) {
      print('  $key -> $value');
    });
  }

  String getTestPath(String user, String flow) {
    switch (user) {
      case 'customer':
        switch (flow) {
          case 'auth':
            return 'flows/customer/auth_flow_test.dart';
          case 'quotation':
            return 'flows/customer/quotation_flow_test.dart';
          case 'profile':
            return 'flows/customer/profile_flow_test.dart';
        }
        break;
      case 'artist':
        switch (flow) {
          case 'auth':
            return 'flows/artist/auth_flow_test.dart';
          case 'quotation':
            return 'flows/artist/quotation_response_flow_test.dart';
          case 'portfolio':
            return 'flows/artist/portfolio_flow_test.dart';
        }
    }
    throw Exception('Invalid combination of user ($user) and flow ($flow)');
  }
}

void printUsage() {
  print('''
\x1B[33mUsage:\x1B[0m
dart run test_runner.dart [options]

Options:
  -u, --user     User type (customer, artist, all)
  -f, --flow     Flow to test (auth, quotation, profile, all)
  -d, --device   Device to run tests on (Use -l to list available devices)
  -v, --verbose  Enable verbose output
  -l, --list     List available devices

Examples:
  dart run test_runner.dart -u customer -f auth -d pixel_5
  dart run test_runner.dart -u artist -f quotation -d iphone_13
  dart run test_runner.dart -u all -f all -d all
''');
}

Future<void> main(List<String> args) async {
  final runner = await TestRunner.create();

  // Parse arguments
  String? user;
  String? flow;
  String? device;
  bool verbose = false;

  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '-u':
      case '--user':
        user = args[++i];
        break;
      case '-f':
      case '--flow':
        flow = args[++i];
        break;
      case '-d':
      case '--device':
        device = args[++i];
        break;
      case '-v':
      case '--verbose':
        verbose = true;
        break;
      case '-l':
      case '--list':
        runner.listDevices();
        exit(0);
      case '-h':
      case '--help':
        printUsage();
        exit(0);
    }
  }

  if (user == null || flow == null || device == null) {
    print('\x1B[31mError: User, flow and device are required\x1B[0m');
    printUsage();
    exit(1);
  }

  // Run tests
  if (user == 'all') {
    if (flow == 'all') {
      for (final u in ['customer', 'artist']) {
        for (final f in ['auth', 'quotation', 'profile', 'portfolio']) {
          await runner.runTest(u, f, device, verbose: verbose);
        }
      }
    } else {
      for (final u in ['customer', 'artist']) {
        await runner.runTest(u, flow, device, verbose: verbose);
      }
    }
  } else {
    if (flow == 'all') {
      for (final f in ['auth', 'quotation', 'profile', 'portfolio']) {
        await runner.runTest(user, f, device, verbose: verbose);
      }
    } else {
      await runner.runTest(user, flow, device, verbose: verbose);
    }
  }
}
