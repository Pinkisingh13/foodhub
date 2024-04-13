import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';

class PItemsList extends StatelessWidget {
  const PItemsList({
    super.key,
    required this.image1,
    required this.image2,
    required this.fn1,
    required this.fn2,
  });

  final String image1, image2;
  final VoidCallback fn1, fn2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: PColors.primary,
          onTap: fn1,
          child: Image(
            image: AssetImage(image1),
            width: 100,
          ),
        ),
        InkWell(
          onTap: fn2,
          child: Image(
            image: AssetImage(image2),
            width: 100,
          ),
        ),
      ],
    );
  }
}
