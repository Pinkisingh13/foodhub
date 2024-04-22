import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/image_strings.dart';

class DrawerHeaderText extends StatelessWidget {
  const DrawerHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            child: Image(
              image: AssetImage(PImages.user),
            ),
          ),
        ),
        Text(
          "Pinki Singh",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}