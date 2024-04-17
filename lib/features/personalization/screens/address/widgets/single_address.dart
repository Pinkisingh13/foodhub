import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class PSingleAddress extends StatelessWidget {
  const PSingleAddress({super.key, required this.isSelectedAddress});

  final bool isSelectedAddress;
  @override
  Widget build(BuildContext context) {
    return PRoundedContainer(
      padding: const EdgeInsets.all(PSizes.md),
      width: double.infinity,
      showBorder: true,
      borderColor: PColors.tertiary,
      margin: const EdgeInsets.only(bottom: PSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(isSelectedAddress ? Iconsax.tick_circle5 : null,
                color: isSelectedAddress
                    ? PColors.light
                    : PColors.dark.withOpacity(0.6)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.home_outlined, color: PColors.darkGrey,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pinki Singh',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: PColors.darkGrey),
                  ),
                  const SizedBox(
                    height: PSizes.sm / 2,
                  ),
                   Text(
                    'Phone no: (+91) 54673830',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: PColors.darkGrey),

                  ),
                  const SizedBox(
                    height: PSizes.sm / 2,
                  ),
                 Text(
                    '8234, Timmy Coves, Maine, USA',
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: PColors.darkGrey),

                  ),

                  Row(
                    children: [
                    TextButton(onPressed: (){}, child: const Text("EDIT"),),
                    TextButton(onPressed: (){}, child: const Text("DELETE"),),
                    TextButton(onPressed: (){}, child: const Text("SHARE"),),
                  ],)
                ],
              ),
            ],
          ),

  
        ],
      ),
    );
  }
}
