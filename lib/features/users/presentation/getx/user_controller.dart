import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/data/repositories/authentication_repository.dart';
import 'package:beyond_ableism/features/authentication/presentation/pages/signin_page.dart';
import 'package:beyond_ableism/features/users/data/models/user_model.dart';
import 'package:beyond_ableism/features/users/data/repositories/user_repositories.dart';
import 'package:beyond_ableism/features/users/presentation/pages/delete_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  Rx<UserModel> user = UserModel.empty().obs;

  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> reaAuthFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    }
  }

  // This below triggers mostly from 3rd party auth
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        String setLastName() {
          if (userCredentials.user!.displayName!.split(' ').length > 1) {
            return userCredentials.user!.displayName!.split(' ')[1];
          } else {
            return '';
          }
        }

        // final nameParts = UserModel
        final user = UserModel(
          username: userCredentials.user!.uid.substring(3, 7),
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          id: userCredentials.user!.uid,
          firstName: userCredentials.user!.displayName!.split(' ')[0],
          lastName: setLastName(),
          address: '',
          email: userCredentials.user!.email ?? '',
        );

        // Save data
        await UserRepository.instance.saveUserDetails(user);
      }
    } catch (e) {
      Get.snackbar('Data not saved', 'Something went wrong');
    }
  }

  void deleteAcountPopUp() {
    Get.defaultDialog(
      contentPadding: EdgeInsets.all(AppDimensions.paddingMain),
      title: 'Delete Account',
      middleText:
          'Are you sure you want to delete your account, this action is not reversible',
      confirm: ElevatedButton(
        onPressed: () async => deleteUserAccount(),
        child: const Text('Delete'),
      ),
      cancel: OutlinedButton(
        onPressed: () => Navigator.of(Get.overlayContext!).pop(),
        child: const Text('Cancel'),
      ),
    );
  }

  void deleteUserAccount() async {
    try {
      final auth = AuthenticationRepository.instance;
      final provider =
          auth.authUser!.providerData.map((e) => e.providerId).first;
      if (provider.isNotEmpty) {
        // Re verify ayth email
        if (provider == 'google.com') {
          await auth.signInWithGoogle();
          await auth.deleteAccount();
          Get.offAll(() => const SignInPage());
        } else if (provider == 'password') {
          Get.to(() => const DeleteAccount());
        }
      }
    } catch (e) {
      Get.snackbar('Oh yeez', e.toString());
    }
  }

  Future<void> userReAuthenticateEmailAndPassword() async {
    try {
      await AuthenticationRepository.instance.reauthenticateWithEmailAndPassword(verifyEmail.text.trim(), verifyPassword.text.trim());
      await AuthenticationRepository.instance.deleteAccount();
      Get.offAll(() => const SignInPage());
    } catch (e) {
      Get.snackbar('Oh yeez', e.toString());
    }
  }
}
