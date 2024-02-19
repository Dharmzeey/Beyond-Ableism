import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.imageURL,
    required this.title,
    required this.subtitle,
  });
  final String imageURL, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimensions.paddingMain),
      child: Column(
        children: [
          Image(
            image: AssetImage(imageURL),
            width: AppDimensions.screenWidth * 0.8,
            height: AppDimensions.screenHeight * 0.4,
            fit: BoxFit.contain,
          ),
          Text(title),
          SizedBox(
            height: AppDimensions.spacing20,
          ),
          Text(subtitle),
        ],
      ),
    );
  }
}