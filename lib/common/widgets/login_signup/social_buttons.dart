import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';

class PSocialButtons extends StatelessWidget {
  const  PSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: PHelperFunctions.screenWidth() / 2.50,
          child: IconButton(
            style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 241, 241, 241)),
            onPressed: () {},
            icon: Row(
              children: [
                const Image(
                  image: AssetImage(PImages.google),
                ),
                const SizedBox(
                  width: PSizes.sm,
                ),
                Text(
                  PTexts.google,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: PHelperFunctions.screenWidth() / 2.50,
          child: IconButton(
            style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 241, 241, 241)),
            onPressed: () {},
            icon: Row(
              children: [
                const Image(
                  image: AssetImage(PImages.facebook),
                ),
                const SizedBox(
                  width: PSizes.sm,
                ),
                Text(
                  PTexts.facebook,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
