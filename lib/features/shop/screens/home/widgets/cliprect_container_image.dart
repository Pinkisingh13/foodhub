import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';

class ClipRectContainerImage extends StatelessWidget {
  const ClipRectContainerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
          color: PColors.primary,
          borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Image(
          image: AssetImage(PImages.restroImage1),
        ),
      ),
    );
  }
}
