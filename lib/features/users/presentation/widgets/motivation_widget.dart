import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:flutter/material.dart';

class MotivationWidget extends StatelessWidget {
  const MotivationWidget(
      {super.key, required this.imageURL, required this.text});
  final String imageURL;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageURL,
              height: AppDimensions.height450,
              width: AppDimensions.width400,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: AppDimensions.width400, child: Text(text))
        ]),
      ),
    );
  }
}
