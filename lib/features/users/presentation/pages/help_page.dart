import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/help_type_widget.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/volunterer_widget.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Need Help?',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          AppDimensions.paddingMain,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppDimensions.spacing20,
            ),
            const Text('What do you need help with?'),
            SizedBox(
              height: AppDimensions.spacing10,
            ),
            SizedBox(
              height: 300,
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: AppDimensions.screenWidth / 2,
                  mainAxisExtent: 70,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return const HelpTypeWidget(
                    iconType: Icons.bus_alert_outlined,
                    text: 'Transportation',
                  );
                },
              ),
            ),
            SizedBox(
              height: AppDimensions.spacing10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: const Color.fromARGB(255, 60, 80, 192)),
              child: Text(
                'Call for help',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppDimensions.fontMain,
                ),
              ),
            ),
            SizedBox(
              height: AppDimensions.spacing40,
            ),
            const Text(
              'Volunteers Nearby',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: AppDimensions.spacing40,
            ),
            SizedBox(
              height: AppDimensions.height450,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const VolunteerWidget(
                      imageUrl: 'images/avatar.png',
                      volunteer: 'Julie',
                      distance: '3.4',
                      offers: 'Transport');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
