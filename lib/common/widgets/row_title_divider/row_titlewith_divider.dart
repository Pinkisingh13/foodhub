import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';

class RowTitleWithDivider extends StatelessWidget {
  const RowTitleWithDivider({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(letterSpacing: 2, wordSpacing: 5),
        ),
        const Expanded(
          child: Divider(
            color: PColors.lightGrey,
            // endIndent: 20,
          ),
        ),
      ],
    );
  }
}
