import 'package:beyond_ableism/config/constants/colors.dart';
import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/community/presentation/getx/community_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityPostCreatePage extends StatelessWidget {
  const CommunityPostCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CommunityController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.paddingMain),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: AppDimensions.spacing30,
              ),
              TextFormField(
                minLines: 5,
                maxLines: 5,
                controller: controller.message,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(),
                  label: const Text('Message'),
                ),
              ),
              SizedBox(
                height: AppDimensions.spacing20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(AppDimensions.height85),
                  backgroundColor: AppColors.buttonColor,
                ),
                child: const Text(
                  'Create',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
