import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/events/presentation/widgets/event_widget.dart';
import 'package:beyond_ableism/features/users/presentation/getx/user_controller.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/motivation_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingMain),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: AppDimensions.spacing10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppDimensions.screenWidth),
                          child: Image.asset(
                            'images/avatar.png',
                            width: AppDimensions.width50,
                            height: AppDimensions.width50,
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.spacing10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Dear ',
                              style:
                                  TextStyle(fontSize: AppDimensions.fontSmall),
                            ),
                            Obx(
                              () => Text(
                                controller.user.value.firstName,
                                style: TextStyle(
                                    fontSize: AppDimensions.fontSmall),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      'Motivation',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const Icon(Icons.search),
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
                  Image(
                    image: const AssetImage('images/alex.png'),
                    width: AppDimensions.width200,
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
