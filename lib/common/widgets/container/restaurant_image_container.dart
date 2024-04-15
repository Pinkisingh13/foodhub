import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';

class PRestaurantImageContainer extends StatelessWidget {
  const PRestaurantImageContainer({
    super.key,
    required this.image,
    this.height = 200,
    this.width,
    this.fit = BoxFit.cover,
  });

  final String image;

  final double height;
  final double? width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: PColors.primary, borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: AssetImage(image),
          // height: 200,
          width: double.infinity,
          fit: fit,
        ),
      ),
    );
  }
}
