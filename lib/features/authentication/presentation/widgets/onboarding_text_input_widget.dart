import 'package:flutter/material.dart';

class OnBoardingTextWidget extends StatelessWidget {
  const OnBoardingTextWidget(
      {super.key, required this.label, required this.inputController, required this.icon});

  final String label;
  final IconData icon;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
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
      {super.key, required this.label, required this.inputController});

  final String label;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
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
