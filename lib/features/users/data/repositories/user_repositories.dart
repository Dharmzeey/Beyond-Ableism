import 'package:beyond_ableism/features/authentication/data/repositories/authentication_repository.dart';
import 'package:beyond_ableism/features/users/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

// save user details
  Future<void> saveUserDetails(UserModel user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
      // Several catches later
    } catch (e) {
      throw 'Something went wrong';
    }
  }

  // Fetch user details based on ID
  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db
          .collection('Users')
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
      // Several catches later
    } catch (e) {
      throw 'Something went wrong $e';
    }
  }

  // Update user data
  Future<void> updateUserDetails(UserModel updatedUser) async {
    try {
      await _db
          .collection('Users')
          .doc(updatedUser.id)
          .update(updatedUser.toJson());
    }
    // Several catches later
    catch (e) {
      throw 'Something went wrong $e';
    }
  }

  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection('Users')
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .update(json);
    } catch (e) {
      throw 'Something went wrong $e';
    }
  }

  // Delete user data
  Future<void> deleteUserData(String userID) async {
    try {
      await _db
          .collection('User')
          .doc(userID)
          .delete();
    } catch (e) {
      throw 'Something went wrong $e';
    }
  }
}
