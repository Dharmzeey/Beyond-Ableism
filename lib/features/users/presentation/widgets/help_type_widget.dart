import 'package:flutter/material.dart';

class HelpTypeWidget extends StatelessWidget {
  const HelpTypeWidget({super.key, required this.iconType, required this.text});

  final IconData iconType;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(iconType),
            const SizedBox(
              width: 15,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
