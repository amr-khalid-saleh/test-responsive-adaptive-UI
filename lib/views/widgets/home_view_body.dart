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

/* SliverToBoxAdapter(
          child: SizedBox(
            height: height * 0.35,
            child: Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(color: Colors.grey),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: const SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: height * 0.35,
            child: Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(color: Colors.grey),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: const SizedBox(height: 16)),
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: 10, (
            context,
            index,
          ) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(height: 120, color: Colors.blueGrey),
              ),
            );
          }),
        ),*/
