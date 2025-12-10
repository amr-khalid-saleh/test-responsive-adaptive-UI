import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_sliver_grid.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_sliver_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomSliverGrid(),
        const CustomSliverListView(),
      ],
    );
  }
}