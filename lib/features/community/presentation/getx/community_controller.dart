import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityController extends GetxController{

 static CommunityController get instance => Get.find();

  final TextEditingController message = TextEditingController();
  GlobalKey<FormState> signupFormkey = GlobalKey<FormState>();

  Future<void> createCommunityPost() async {

  }

}
