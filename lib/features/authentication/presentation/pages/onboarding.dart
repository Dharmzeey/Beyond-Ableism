import 'package:beyond_ableism/features/authentication/presentation/getx/onboarding_controller.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_dot_nav_widget.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_next_widget.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_skip_widget.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnboardingWidget(
              imageURL: 'images/onboarding/ob1.jpg',
              title: 'Welcome to a place where everyone is equal',
              subtitle: 'Welcome to a place where everyone is equal',
            ),
            OnboardingWidget(
              imageURL: 'images/onboarding/ob2.jpg',
              title: 'Welcome to a place where everyone is equal',
              subtitle: 'Welcome to a place where everyone is equal',
            ),
            OnboardingWidget(
              imageURL: 'images/onboarding/ob3.jpg',
              title: 'Welcome to a place where everyone is equal',
              subtitle: 'Welcome to a place where everyone is equal',
            )
          ],
        ),
        const OnBordingSkipWidget(),
        const OnBoardingDotNavigation(),
        const OnBoardingNextWidget()
      ]),
    );
  }
}
