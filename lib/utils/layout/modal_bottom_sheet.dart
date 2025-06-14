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
  if (platformService.isIOS) {
    if (isRoot) {
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
