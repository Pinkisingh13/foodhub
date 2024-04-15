import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({
    super.key,
    required this.height,
    required this.children,
  });

  final double height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(PSizes.md),
      decoration: BoxDecoration(
        // color: Color.fromARGB(255, 235, 246, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}