import 'package:bold_freelance/core/app_export.dart';
import 'package:bold_freelance/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnboardingOneScreen(),  // Replace 'HomePage' with your actual home page
        ),
      );
    });

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: SizedBox(
        width: double.maxFinite,
        child: CustomImageView(
          svgPath: ImageConstant.imgGroup162797,
          height: getVerticalSize(153),
          width: getHorizontalSize(102),
          alignment: Alignment.center,
          margin: getMargin(
            bottom: 5,
          ),
        ),
      ),
    );
  }
}
