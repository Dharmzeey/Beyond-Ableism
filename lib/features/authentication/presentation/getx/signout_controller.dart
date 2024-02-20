import 'package:beyond_ableism/features/authentication/data/repositories/authentication_repository.dart';
import 'package:get/get.dart';

class SignOutController extends GetxController {
  Future<void> signOut() async {
    try {
      await AuthenticationRepository.instance.logout();
      Get.snackbar('Success', 'Signed out');
    } catch (e) {
      throw 'An error occured $e';
    }
  }
}
