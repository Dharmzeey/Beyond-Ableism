import 'package:flutter/material.dart';

class OnBoardingButtonWidget extends StatelessWidget {
  const OnBoardingButtonWidget({
    super.key,
    required this.text,
    required this.bgcolor,
    this.onpressed,
  });

  final String text;
  final Color bgcolor;
  final dynamic onpressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onpressed,
      style: FilledButton.styleFrom(
          side: const BorderSide(),
          minimumSize: const Size.fromHeight(50),
          backgroundColor: bgcolor),
      child: Text(text),
    );
  }
}
