import 'package:beyond_ableism/config/constants/colors.dart';
import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/talent_and_skills/presentation/getx/talent_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TalentPostCreatePage extends StatelessWidget {
  const TalentPostCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TalentController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Showcase a talent'),
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
                controller: controller.title,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(),
                  label: const Text('Title'),
                ),
              ),
              SizedBox(
                height: AppDimensions.spacing20,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  style: IconButton.styleFrom(
                    elevation: 5,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(AppDimensions.height85),
                  backgroundColor: AppColors.buttonColor,
                ),
                child: const Text(
                  'Upload',
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
