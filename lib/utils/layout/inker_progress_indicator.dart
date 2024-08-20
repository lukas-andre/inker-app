import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkerProgressIndicator extends StatelessWidget {
  final Color? color;
  final double? radius;

  const InkerProgressIndicator({
    super.key,
    this.color,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoActivityIndicator(
            color: color ?? CupertinoColors.white,
          )
        : CircularProgressIndicator(
            valueColor: color != null
                ? AlwaysStoppedAnimation<Color>(color!)
                : const AlwaysStoppedAnimation<Color>(Color(0xff7450ff)));
  }
}
