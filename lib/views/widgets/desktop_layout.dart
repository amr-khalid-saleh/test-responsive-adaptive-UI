import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/cutom_drawer.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDrawer(),
        Expanded(child: TabletLayout()),
      ],
    );
  }
}
