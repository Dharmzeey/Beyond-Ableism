import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/getx/signout_controller.dart';
import 'package:beyond_ableism/features/users/presentation/getx/user_controller.dart';
import 'package:beyond_ableism/features/users/presentation/pages/edit_profile_page.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/hobbies_widget.dart';
import 'package:beyond_ableism/mock/Hobbies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final hobbies = Hobbies.hobbies;
    final controller = Get.put(SignOutController());
    final profileController = UserController.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingMain),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppDimensions.spacing10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(AppDimensions.screenWidth),
                child: Image.asset(
                  'images/avatar.png',
                  width: AppDimensions.width150,
                  height: AppDimensions.width150,
                ),
              ),
              Obx(
                () => Text(
                  profileController.user.value.fullName,
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
              Obx(
                () => Text(
                  profileController.user.value.username,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: AppDimensions.spacing20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const ProfileEditPage());
                },
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
              const Text(
                  'Futuristic Dreamer. An experienced artist. Cat Lover'),
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
                height: AppDimensions.height350,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: hobbies.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: AppDimensions.screenWidth / 2.5,
                    mainAxisExtent: AppDimensions.height85,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: AppDimensions.spacing20,
                    mainAxisSpacing: AppDimensions.spacing20,
                  ),
                  itemBuilder: (context, index) {
                    return HobbiesWidget(
                      iconType: hobbies[index]['icon'],
                      hobbyType: hobbies[index]['name'],
                    );
                  },
                ),
              ),
              SizedBox(
                height: AppDimensions.spacing20,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.signOut();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.grey.shade100),
                child: Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.black, fontSize: AppDimensions.fontMain),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
