import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/getx/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnBordingSkipWidget extends StatelessWidget {
  const OnBordingSkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDimensions.spacing50,
      right: AppDimensions.spacing30,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}


