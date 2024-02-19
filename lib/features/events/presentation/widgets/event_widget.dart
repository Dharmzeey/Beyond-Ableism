import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  const EventWidget(
      {super.key,
      required this.imageURL,
      required this.title,
      required this.date});

  final String imageURL;
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.width550,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(imageURL),
          ),
          Positioned(
            bottom: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: AppDimensions.width300,
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: AppDimensions.extraLarge,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: AppDimensions.width500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: const TextStyle(color: Colors.white),
                    ),
                    // Spacer(),
                    FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue.shade300,),
                        child: const Text('Register Now'), ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
