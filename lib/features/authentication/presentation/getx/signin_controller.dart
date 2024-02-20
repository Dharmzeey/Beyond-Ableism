import 'package:beyond_ableism/features/authentication/data/repositories/authentication_repository.dart';
import 'package:beyond_ableism/features/users/presentation/getx/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SigninController extends GetxController {
  // static SigninController get instance => Get.find();

  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  Future<void> emailAndPasswordSignIn() async {
    try {
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // logging in
      await AuthenticationRepository.instance
          .signInWithEmailAndPassword(email.text.trim(), password.text.trim());
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      Get.snackbar('Oh Yeez', e.toString());
    }
  }

  Future<void> googleSIgnIn() async {
    try {
      // Google AUthentication
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();
      await userController.saveUserRecord(userCredentials);
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      Get.snackbar('Oh Yeez', 'Something went wrong');
    }
  }
}
