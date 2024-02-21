import 'package:beyond_ableism/features/users/data/models/user_model.dart';
import 'package:beyond_ableism/features/users/data/repositories/user_repositories.dart';
import 'package:beyond_ableism/features/users/presentation/getx/user_controller.dart';
import 'package:beyond_ableism/features/users/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProfileController extends GetxController {
  static UpdateProfileController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final phoneNumber = TextEditingController();
  final address = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  final GlobalKey<FormState> updateUserFormkey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeProfile();
    super.onInit();
  }

  Future<void> initializeProfile() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
    username.text = userController.user.value.username;
    phoneNumber.text = userController.user.value.phoneNumber;
    address.text = userController.user.value.address;
  }

  Future<void> updateProfile() async {
    try {
      // Update the firestore
      UserModel updatedUser = UserModel(
          username: username.text,
          phoneNumber: phoneNumber.text,
          id: userController.user.value.id,
          firstName: firstName.text,
          lastName: lastName.text,
          address: address.text,
          email: userController.user.value.email);
      userRepository.updateUserDetails(updatedUser);

      // Update the rx values
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();
      userController.user.value.username = username.text.trim();
      userController.user.value.phoneNumber = phoneNumber.text.trim();
      userController.user.value.address = address.text.trim();

      Get.snackbar('Success', 'Profile Updated Successfully');
    } catch (e) {
      throw 'An error occured$e';
    }

    Get.off(() => const HomePage());
  }
}
