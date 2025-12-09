import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_list_item.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: CustomListItem(),
        );
      },
    );
  }
}
