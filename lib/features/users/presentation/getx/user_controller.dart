import 'package:beyond_ableism/features/users/data/models/user_model.dart';
import 'package:beyond_ableism/features/users/data/repositories/user_repositories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        // final nameParts = UserModel
        final user = UserModel(
          username: userCredentials.user!.uid.substring(3, 7),
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          id: userCredentials.user!.uid,
          firstName: userCredentials.user!.displayName!.split(' ')[0],
          lastName: userCredentials.user!.displayName!.split(' ')[1],
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
}
