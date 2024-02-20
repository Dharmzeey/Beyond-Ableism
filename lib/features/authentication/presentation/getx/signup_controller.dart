import 'package:beyond_ableism/features/authentication/data/repositories/authentication_repository.dart';
import 'package:beyond_ableism/features/authentication/presentation/pages/signin_page.dart';
import 'package:beyond_ableism/features/users/data/models/user_model.dart';
import 'package:beyond_ableism/features/users/data/repositories/user_repositories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final address = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormkey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      // check internet
      // final isConnected = =await NetworkManager.instance.isConnected;

      // Signup, save in firebase authentication and return user instance
      final newUserCredentials = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

// save authenticated user in firebase firestore
      final user = UserModel(
        id: newUserCredentials.user!.uid,
        username: username.text,
        phoneNumber: phoneNumber.text,
        firstName: firstName.text,
        lastName: lastName.text,
        address: address.text,
        email: email.text,
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserDetails(user);

      Get.snackbar('Success', 'Account Created, please login');
      Get.offAll(() => const SignIn());
    } catch (e) {
      Get.snackbar('Oh Yep', e.toString());
    } finally {}
  }
}
