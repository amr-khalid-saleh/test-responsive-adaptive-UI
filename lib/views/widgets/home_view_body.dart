import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/desktop_layout.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/mobile_layout.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth < 576) {
            return const MobileLayout();
          } else if (constrains.maxWidth < 992) {
            return const TabletLayout();
          } else {
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}

//  Break Points On Width Devices Screens
/*
  * very small devices (portrait_phone): width<576
  * small devices (landscape_phone): width>576
  * medium devices (tablet): width>768
  * large devices (desktops): width>992
  * x-large devices (large_desktop_screen): width>1200
  * xx-large devices (most_large_desktop_screens): width>1400
   */
