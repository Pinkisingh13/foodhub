import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';


class PDrawerElement extends StatelessWidget {
  const PDrawerElement({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  final String image, title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: PColors.primary,
      child: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace / 4.9),
        child: Row(
          children: [
            Image(
              image: AssetImage(image),
            ),
            const SizedBox(
              width: PSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: PColors.textDrawer),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: PColors.darkerGrey,
            ),
          ],
        ),
      ),
    );
  }
}
