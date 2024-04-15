import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PProfileMenu extends StatelessWidget {
  const PProfileMenu({
    super.key,
    required this.title,
    required this.value,

  });

  final String title, value;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.spaceBtwItems / 1.5),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
               "$title : ",
              style: Theme.of(context).textTheme.bodySmall!.apply(color: PColors.primary),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        
        ],
      ),
    );
  }
}
