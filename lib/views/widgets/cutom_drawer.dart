import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite_rounded,
              size: 42,
              color: Color(0xffDBDBDB),
            ),
          ),
          CustomDrawerItemsListView(),
        ],
      ),
    );
  }
}
