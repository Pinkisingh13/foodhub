import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/login_signup/form_divider.dart';
import 'package:foodhub/common/widgets/login_signup/titleandsubtitle.dart';

import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only( right: PSizes.defaultSpace, left: PSizes.defaultSpace, top: PSizes.md, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// --- Image, Title & SubTitle ---
                PImageTitleAndSubtitle(
                  title: PTexts.signupTitle,
                  subTitle: PTexts.signupSubTitle,
                ),


                /// --- Form ---
                PSignupForm(),
                SizedBox(
                  height: PSizes.spaceBtwItems,
                ),

                /// --- Divider ---
                PFormDivider(dividerText: PTexts.signupTitle),
                SizedBox(
                  height: PSizes.spaceBtwItems,
                ),

                /// --- Social Buttons ---
                PSocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
