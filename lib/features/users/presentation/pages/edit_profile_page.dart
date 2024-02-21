import 'package:beyond_ableism/config/constants/colors.dart';
import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_button_widget.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_text_input_widget.dart';
import 'package:beyond_ableism/features/users/presentation/getx/update_profile_controller.dart';
import 'package:beyond_ableism/features/users/presentation/getx/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateProfileController());
    final usercontroller = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppDimensions.paddingMain),
          child: Form(
            key: controller.updateUserFormkey,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppDimensions.screenWidth),
                  child: Image.asset(
                    'images/avatar.png',
                    width: AppDimensions.width150,
                    height: AppDimensions.width150,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                const Text('change profile picture'),
                SizedBox(
                  height: AppDimensions.spacing10,
                ),
                OnBoardingTextWidget(
                    label: 'First Name',
                    inputController: controller.firstName,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Last Name',
                    inputController: controller.lastName,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Username',
                    inputController: controller.username,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Phone Number',
                    inputController: controller.phoneNumber,
                    icon: Icons.phone),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Address',
                    inputController: controller.address,
                    icon: Icons.location_city),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingButtonWidget(
                  onpressed: controller.updateProfile,
                  text: 'Update Profile',
                  bgcolor: AppColors.buttonColor,
                ),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                TextButton(
                  onPressed: () {
                    usercontroller.deleteAcountPopUp();
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size.fromHeight(AppDimensions.height85)),
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
