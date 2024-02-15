import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget(
      {super.key, required this.label, required this.inputController});

  final String label;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: const OutlineInputBorder(),
          label: Text(label)),
    );
  }
}
