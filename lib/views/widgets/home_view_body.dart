import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_list.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_sliver_grid.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_sliver_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          /*
          Break Points On Width Devices Screens
          * very small devices (portrait_phone): width<576
          * small devices (landscape_phone): width>576
          * medium devices (tablet): width>768
          * large devices (desktops): width>992
          * x-large devices (large_desktop_screen): width>1200
          * xx-large devices (most_large_desktop_screens): width>1400
           */
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constrains) {
                if(constrains.maxWidth>576){
                  return CustomList();
                }else{
                  return const CustomSliverGrid();
                }
              }
            ),
          ),
          const CustomSliverListView(),
        ],
      ),
    );
  }
}
