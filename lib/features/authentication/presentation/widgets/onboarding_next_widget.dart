import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/getx/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingNextWidget extends StatelessWidget {
  const OnBoardingNextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: AppDimensions.spacing30,
        bottom: AppDimensions.spacing50,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          child: const Icon(Icons.arrow_right),
        ));
  }
}