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
                title: 'Welcome to Beyond Ableism',
                subtitle:
                    'A community where abilities shine and diversity thrives.',
              ),
              OnboardingWidget(
                imageURL: 'images/onboarding/ob2.jpg',
                title: 'Empowering Every Voice',
                subtitle:
                    'Discover a platform where inclusivity is the language we speak.',
              ),
              OnboardingWidget(
                imageURL: 'images/onboarding/ob3.jpg',
                title: 'Beyond Limits, Beyond Labels',
                subtitle:
                    'Breaking barriers, fostering connections, and embracing diversity.',
              ),
            ]),
        const OnBordingSkipWidget(),
        const OnBoardingDotNavigation(),
        const OnBoardingNextWidget()
      ]),
    );
  }
}
