import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/custom_item.dart';

class CustomInfoColumn extends StatelessWidget {
  const CustomInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(flex: 2, child: CustomItem()),
          const SizedBox(height: 16,),
          Expanded(child: CustomItem(color: Colors.white70)),
        ],
      ),
    );
  }
}
