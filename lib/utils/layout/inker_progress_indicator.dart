import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';

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
    final platformService = context.read<PlatformService>();
    return platformService.isIOS
        ? CupertinoActivityIndicator(
            color: color ?? CupertinoColors.white,
          )
        : CircularProgressIndicator(
            valueColor: color != null
                ? AlwaysStoppedAnimation<Color>(color!)
                : const AlwaysStoppedAnimation<Color>(Color(0xff7450ff)));
  }
}
