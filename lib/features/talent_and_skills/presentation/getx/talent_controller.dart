import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TalentController extends GetxController {
  TalentController get instacne => Get.find();

  final TextEditingController title = TextEditingController();
  final GlobalKey<FormState> talentFormKey = GlobalKey<FormState>();

  Future<void> createTalentPost() async {}
}
