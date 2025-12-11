import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final Widget mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 576) {
          return mobileLayout;
        } else if (constrains.maxWidth < 992) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
