import 'package:beyond_ableism/core/constants/dimensions.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/hobbies_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingMain),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppDimensions.spacing30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(AppDimensions.screenWidth),
              child: Image.asset(
                'images/avatar.png',
                width: AppDimensions.width150,
                height: AppDimensions.width150,
              ),
            ),
            const Text(
              'Allison Smith',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            const Text(
              'An Passionate Artist',
              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
            ),
            SizedBox(
              height: AppDimensions.spacing20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.grey.shade100),
              child: Text(
                'Edit Profile',
                style: TextStyle(
                    color: Colors.black, fontSize: AppDimensions.fontMain),
              ),
            ),
            SizedBox(
              height: AppDimensions.spacing50,
            ),
            Text(
              'Bio',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: AppDimensions.fontLarge),
            ),
            SizedBox(
              height: AppDimensions.spacing30,
            ),
            const Text('Futuristic Dreamer. An experienced artist. Cat Lover'),
            SizedBox(
              height: AppDimensions.spacing30,
            ),
            Text(
              'Details',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: AppDimensions.fontLarge),
            ),
            SizedBox(
              height: AppDimensions.spacing20,
            ),
            Text(
              'Hobbies',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: AppDimensions.fontLarge),
            ),
            SizedBox(
              height: AppDimensions.spacing40,
            ),
            SizedBox(
              height: 300,
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: AppDimensions.screenWidth / 2.5,
                  mainAxisExtent: 70,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return const HobbiesWidget(
                    iconType: Icons.bus_alert_outlined,
                    hobbyType: 'Hiking',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
