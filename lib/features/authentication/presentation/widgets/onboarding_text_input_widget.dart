import 'package:flutter/material.dart';

class OnBoardingTextWidget extends StatelessWidget {
  const OnBoardingTextWidget(
      {super.key,
      required this.label,
      required this.inputController,
      required this.icon,
      this.validatorFn});

  final String label;
  final IconData icon;
  final TextEditingController inputController;
  final dynamic validatorFn;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      validator: validatorFn,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.grey.shade200,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: const OutlineInputBorder(),
        label: Text(label),
      ),
    );
  }
}

class OnBoardingPasswordTextWidget extends StatelessWidget {
  const OnBoardingPasswordTextWidget(
      {super.key, required this.label, required this.inputController, this.validatorFn});

  final String label;
  final TextEditingController inputController;
  final dynamic validatorFn;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      validator: validatorFn,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.key),
        suffixIcon: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.remove_red_eye),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: const OutlineInputBorder(),
        label: Text(label),
      ),
    );
  }
}
