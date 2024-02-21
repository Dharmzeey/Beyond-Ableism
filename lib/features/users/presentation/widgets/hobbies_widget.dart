import 'package:flutter/material.dart';

class HobbiesWidget extends StatelessWidget {
  const HobbiesWidget(
      {super.key, required this.iconType, required this.hobbyType});

  final IconData iconType;
  final String hobbyType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(iconType),
          const SizedBox(width: 5),
          Flexible(
            child: Text(hobbyType),
          ),
        ],
      ),
    );
  }
}
