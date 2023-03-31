import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void openModalBottomSheet(
    {required BuildContext context,
    required page,
    bool isRoot = false,
    enableDrag = true}) {
  if (Platform.isIOS) {
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
