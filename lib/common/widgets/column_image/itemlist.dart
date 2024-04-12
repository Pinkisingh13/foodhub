import 'package:flutter/material.dart';

class PItemsList extends StatelessWidget {
  const PItemsList({
    super.key, required this.image1, required this.image2,
  });

  final String image1,image2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image1),
          width: 100,
        ),
        Image(
          image:AssetImage(image2),
          width: 100,
        ),
      ],
    );
  }
}
