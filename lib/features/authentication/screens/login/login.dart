import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/login_signup/form_divider.dart';
import 'package:foodhub/common/widgets/login_signup/social_buttons.dart';
import 'package:foodhub/common/widgets/login_signup/titleandsubtitle.dart';
import 'package:foodhub/features/authentication/screens/login/widgets/login_form.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// --- Image, Title and Subtitle ---
                PImageTitleAndSubtitle(
                  title: PTexts.loginTitle,
                  subTitle: PTexts.loginSubTitle,
                ),
                SizedBox(height: PSizes.spaceBtwItems,),
                
                /// --- Form ---
                LoginForm(),

                /// --- Divider ---
                PFormDivider(dividerText: PTexts.orSignInWith),
                SizedBox(
                  height: PSizes.spaceBtwSections,
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
