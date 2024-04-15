import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';

class PRowTextWithDivider extends StatelessWidget {
  const PRowTextWithDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: PColors.primary,
            height: 3,
            endIndent: 20,
          ),
        ),
        Text(
          "MENU",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: PColors.darkGrey, letterSpacing: 3),
        ),
        const Expanded(
          child: Divider(
            indent: 20,
            color: PColors.primary,
            height: 3,
          ),
        ),
      ],
    );
  }
}

