import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
