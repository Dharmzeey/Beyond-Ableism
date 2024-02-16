import 'package:beyond_ableism/core/constants/dimensions.dart';
import 'package:flutter/material.dart';

class VolunteerWidget extends StatelessWidget {
  const VolunteerWidget(
      {super.key,
      required this.imageUrl,
      required this.volunteer,
      required this.distance,
      required this.offers});

  final String imageUrl;
  final String volunteer;
  final String distance;
  final String offers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppDimensions.spacing20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.screenWidth),
            child: Image.asset(
              imageUrl,
              width: AppDimensions.width80,
              height: AppDimensions.width80,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$volunteer, $distance miles away',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                'can offer $offers',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
