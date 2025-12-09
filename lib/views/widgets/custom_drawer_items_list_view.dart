import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/data/data.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_drawer_item.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(drawerItemModel: drawerItems[index]);
      },
    );
  }
}
