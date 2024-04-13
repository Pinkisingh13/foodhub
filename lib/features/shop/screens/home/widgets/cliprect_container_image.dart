import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';

class ClipRectContainerImage extends StatelessWidget {
  const ClipRectContainerImage({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
          color: PColors.primary, borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image(
              image: AssetImage(image),
            ),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  color: PColors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
