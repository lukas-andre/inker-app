import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';

void openModalBottomSheet(
    {required BuildContext context,
    required page,
    bool isRoot = false,
    enableDrag = true,
    bool material = false}) {
  final platformService = context.read<PlatformService>();
  
  // Para web siempre usar Material
  if (platformService.isWeb) {
    showMaterialModalBottomSheet(
        enableDrag: enableDrag, context: context, builder: (context) => page);
    return;
  }
  
  if (platformService.isIOS) {
    // Solo usar CupertinoScaffold.show si estamos seguros que hay un CupertinoScaffold parent
    if (isRoot && _hasCupertinoScaffoldParent(context)) {
      CupertinoScaffold.showCupertinoModalBottomSheet(
          enableDrag: enableDrag, context: context, builder: (context) => page);
    } else {
      showCupertinoModalBottomSheet(
          enableDrag: enableDrag, context: context, builder: (context) => page);
    }
  } else {
    showMaterialModalBottomSheet(
        enableDrag: enableDrag, context: context, builder: (context) => page);
  }
}

bool _hasCupertinoScaffoldParent(BuildContext context) {
  try {
    final scaffold = context.findAncestorWidgetOfExactType<CupertinoScaffold>();
    return scaffold != null;
  } catch (e) {
    return false;
  }
}
