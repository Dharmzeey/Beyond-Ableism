import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/getx/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: AppDimensions.spacing50,
        left: AppDimensions.spacing30,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.black,
            dotHeight: AppDimensions.screenHeight * 0.01,
          ),
        ));
  }
}
