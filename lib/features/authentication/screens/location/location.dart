import 'package:flutter/material.dart';
import 'package:foodhub/features/authentication/screens/location/widgets/images_button.dart';
import 'package:foodhub/common/widgets/text/heading_subheading.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Title & SubTitle
             const PTitleAndSubtitle(title: PTexts.locationTitle, subTitle: PTexts.locationSubTitle,),

              // Images & Allow Location Button
              const LocationImageAndButton(),
             const SizedBox(height: PSizes.sm,),
             
              // Manual location Button
              TextButton(
                onPressed: () {},
                child: Text(PTexts.manualLocationButton, style: Theme.of(context).textTheme.bodyLarge,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

