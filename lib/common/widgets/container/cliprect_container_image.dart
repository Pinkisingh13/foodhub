import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';

class ClipRectContainerImage extends StatelessWidget {
  const ClipRectContainerImage({
    super.key,
    required this.image,
    this.width,
    this.height,
    this.isShowFavIcon = true,
  });

  final String image;
  final double? width, height;
  final bool isShowFavIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width ?? 132,
      // height: height,
      decoration: BoxDecoration(
          // color: PColors.primary,
          borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image(
              image: AssetImage(image),
              width: width ?? 132,
              height: height,
            ),
          isShowFavIcon ?  Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline, color: PColors.white),
              ),
            ) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
