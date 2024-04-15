import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class IngredientsRow extends StatelessWidget {
  const IngredientsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(PImages.ingridents1),
            ),
            Image(
              image: AssetImage(PImages.ingridents2),
            ),
            Image(
              image: AssetImage(PImages.ingridents3),
            ),
            Image(
              image: AssetImage(PImages.ingridents4),
            ),
          ],
        ),
        SizedBox(
          height: PSizes.spaceBtwItems,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image(
              image: AssetImage(PImages.ingridents5),
            ),
            Image(
              image: AssetImage(PImages.ingridents6),
            ),
            Image(
              image: AssetImage(PImages.ingridents7),
            ),
            Image(
              image: AssetImage(PImages.ingridents8),
            ),
          ],
        )
      ],
    );
  }
}
