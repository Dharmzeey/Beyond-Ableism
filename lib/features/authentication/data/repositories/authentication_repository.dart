import 'package:beyond_ableism/features/authentication/presentation/pages/signin_page.dart';
import 'package:beyond_ableism/features/authentication/presentation/pages/onboarding.dart';
import 'package:beyond_ableism/features/users/data/repositories/user_repositories.dart';
// import 'package:beyond_ableism/features/authentication/presentation/pages/verify_email_page.dart';
import 'package:beyond_ableism/features/users/presentation/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Get Authenticated User Data
  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const HomePage());
      } else {
        // Get.offAll(() => VerifyEmailPage(email: _auth.currentUser?.email));
        Get.offAll(() => const HomePage());
      }
    } else {
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const SignInPage())
          : Get.off(() => const OnBoardingPage());
    }
  }

  /*--------------MAIN AUTH---------------*/

// [EmailAuth] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw 'Something went wrong, ${e.code}';
    }
  }

  // [EmailAuth] - Signin
  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw 'Something went wrong, ${e.code}';
    }
  }

// [EmailVerification] - Verify mail
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw 'Something went wrong, ${e.code}';
    }
  }

  /*--------------THIRD PARTY AUTH---------------*/
  // [GoogleAUthentication] - Google
  Future<UserCredential> signInWithGoogle() async {
    try {
      // Trigger AUthentication
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      // Obtain Auth details
      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;

      // Create New credentials
      final credentials = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in
      return await _auth.signInWithCredential(credentials);
    } on FirebaseAuthException catch (e) {
      throw 'Something went wrong $e';
    } catch (e) {
      throw 'something went wrong $e';
    }
  }

  // [logout] - Logout
  Future<void> logout() async {
    try {
      await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const SignInPage());
    } on FirebaseAuthException catch (e) {
      throw e.code;
    } catch (e) {
      throw 'Something went wrong $e';
    }
  }

  // [ReAuthentication]
  Future<void> reauthenticateWithEmailAndPassword(
      String email, String password) async {
    try {
      AuthCredential credential =
          EmailAuthProvider.credential(email: email, password: password);
      await _auth.currentUser!.reauthenticateWithCredential(credential);
    } catch (e) {
      throw 'something wrong';
    }
  }

  Future<void> deleteAccount() async {
    try {
      // Delete Firestore first
      await UserRepository.instance.deleteUserData(_auth.currentUser!.uid);
      // Then delete from auth
      await _auth.currentUser?.delete();
    } catch (e) {
      throw 'something wrong';
    }
  }
}
