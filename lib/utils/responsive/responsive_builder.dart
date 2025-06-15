import 'package:flutter/material.dart';
import 'responsive_breakpoints.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? desktopLarge;

  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.desktopLarge,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final deviceType = Responsive.getDeviceType(context);
        final screenWidth = MediaQuery.of(context).size.width;
        print('📱 ResponsiveBuilder: screenWidth=$screenWidth, deviceType=$deviceType');
        
        switch (deviceType) {
          case DeviceType.mobileSmall:
          case DeviceType.mobile:
            print('🔄 Using MOBILE layout');
            return mobile;
          case DeviceType.tablet:
            print('🔄 Using TABLET layout');
            return tablet ?? mobile;
          case DeviceType.desktop:
            print('🔄 Using DESKTOP layout');
            return desktop ?? tablet ?? mobile;
          case DeviceType.desktopLarge:
            print('🔄 Using DESKTOP_LARGE layout');
            return desktopLarge ?? desktop ?? tablet ?? mobile;
        }
      },
    );
  }
}

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double? maxWidth;
  final EdgeInsets? padding;
  final Color? backgroundColor;

  const ResponsiveContainer({
    super.key,
    required this.child,
    this.maxWidth,
    this.padding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    double containerMaxWidth = maxWidth ?? 
      Responsive.value(
        context,
        mobile: double.infinity,
        tablet: 768,
        desktop: 1024,
        desktopLarge: 1200,
      );

    EdgeInsets containerPadding = padding ?? 
      Responsive.padding(context, horizontal: 20, vertical: 16);

    Widget content = Container(
      width: double.infinity,
      padding: containerPadding,
      color: backgroundColor,
      child: child,
    );

    if (containerMaxWidth != double.infinity) {
      content = Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: containerMaxWidth),
          child: content,
        ),
      );
    }

    return content;
  }
}

class ResponsiveRow extends StatelessWidget {
  final List<ResponsiveRowItem> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double spacing;

  const ResponsiveRow({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.spacing = 16,
  });

  @override
  Widget build(BuildContext context) {
    final deviceType = Responsive.getDeviceType(context);
    
    if (deviceType == DeviceType.mobileSmall || deviceType == DeviceType.mobile) {
      return Column(
        crossAxisAlignment: crossAxisAlignment,
        children: children.map((item) => 
          Padding(
            padding: EdgeInsets.only(bottom: spacing),
            child: SizedBox(
              width: double.infinity,
              child: item.child,
            ),
          )
        ).toList(),
      );
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children.map((item) {
        int flex = item.flex ?? 1;
        Widget child = item.child;
        
        if (item.flex != null) {
          child = Expanded(flex: flex, child: child);
        }
        
        return Padding(
          padding: EdgeInsets.only(right: spacing),
          child: child,
        );
      }).toList(),
    );
  }
}

class ResponsiveRowItem {
  final Widget child;
  final int? flex;

  ResponsiveRowItem({
    required this.child,
    this.flex,
  });
}