import 'package:flutter/material.dart';
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
          SliverToBoxAdapter(child: const SizedBox(height: 16)),
          CustomSliverGrid(),
          CustomSliverListView(),
        ],
      ),
    );
  }
}
