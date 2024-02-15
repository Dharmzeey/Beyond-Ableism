import 'package:beyond_ableism/core/constants/dimensions.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/event_widget.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/motivation_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingMain),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: AppDimensions.spacing200),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'Motivation',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimensions.spacing30,
              ),
              const Text(
                'Daily Quotes',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                width: AppDimensions.width550,
                child: const Image(
                  image: AssetImage('images/keller.png'),
                ),
              ),
              Text(
                'Helen Keller',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: AppDimensions.fontLarge),
              ),
              const Text('American author and lecturer, 1880 - 1968'),
              const Text(
                  'Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence'),
              SizedBox(
                height: AppDimensions.spacing30,
              ),
              Text(
                'Success Stories',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: AppDimensions.extraLarge),
              ),
              SizedBox(
                height: AppDimensions.spacing20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: AppDimensions.width300,
                        child: Text(
                          'Overcoming Adversity: The Story of Alex Banayan',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: AppDimensions.fontLarge),
                        ),
                      ),
                      Text(
                        'By Alex Banayan',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: AppDimensions.fontMain),
                      ),
                      SizedBox(
                        height: AppDimensions.spacing10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(),
                        child: const Text(
                          'Read Now',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const Image(
                    image: AssetImage('images/alex.png'),
                  ),
                ],
              ),
              SizedBox(
                height: AppDimensions.spacing30,
              ),
              SizedBox(
                height: AppDimensions.height550,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MotivationWidget(
                        imageURL: 'images/motivation1.png',
                        text: 'Building Confidence in spite of challanges'),
                    MotivationWidget(
                        imageURL: 'images/motivation2.png',
                        text: 'Pursue your personal and professional journey')
                  ],
                ),
              ),
              const Text(
                'Upcoming Events',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: AppDimensions.spacing20,
              ),
              const EventWidget(
                  imageURL: 'images/birdwatching.png',
                  title: 'Bird Watching Session',
                  date: 'Feb 24, 2024'),
              SizedBox(
                height: AppDimensions.spacing30,
              ),
              const EventWidget(
                  imageURL: 'images/design.png',
                  title: 'Inclusive Design Workshop',
                  date: 'Mar 03 - 10, 2024'),
            ],
          ),
        ),
      ),
    );
  }
}
