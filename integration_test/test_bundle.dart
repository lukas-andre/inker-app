// ignore_for_file: type=lint, invalid_use_of_internal_member

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

// START: GENERATED TEST IMPORTS
import 'flows/artist/add_stencil_test.dart' as flows__artist__add_stencil_test;
// END: GENERATED TEST IMPORTS

Future<void> main() async {
  final nativeAutomator = NativeAutomator(config: NativeAutomatorConfig());
  await nativeAutomator.initialize();
  PatrolBinding.ensureInitialized(NativeAutomatorConfig())
    ..workaroundDebugDefaultTargetPlatformOverride =
        debugDefaultTargetPlatformOverride;

  // START: GENERATED TEST GROUPS
  group('flows.artist.add_stencil_test', flows__artist__add_stencil_test.main);
  // END: GENERATED TEST GROUPS
}
