import 'package:beyond_ableism/config/constants/colors.dart';
import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/help/presentation/getx/help_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpTypeWidget extends StatelessWidget {
  const HelpTypeWidget({
    super.key,
    required this.iconType,
    required this.text,
  });

  final IconData iconType;
  final String text;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelpController());
    return Obx(
      () => GestureDetector(
        onTap: () {
          controller.isHelpSelected.value = !controller.isHelpSelected.value;
        },
        child: Container(
          decoration: BoxDecoration(
            color: controller.isHelpSelected.value
                ? Colors.transparent
                : AppColors.buttonColor,
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(iconType),
                SizedBox(
                  width: AppDimensions.spacing10,
                ),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
