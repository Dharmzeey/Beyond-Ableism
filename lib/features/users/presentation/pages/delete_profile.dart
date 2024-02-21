import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_text_input_widget.dart';
import 'package:beyond_ableism/features/users/presentation/getx/user_controller.dart';
import 'package:flutter/material.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.paddingMain),
        child: Form(
            child: Column(
          children: [
            OnBoardingTextWidget(
                label: 'Email',
                inputController: controller.verifyEmail,
                icon: Icons.email),
            OnBoardingPasswordTextWidget(
                label: 'Password', inputController: controller.verifyPassword),
            ElevatedButton(
                onPressed: () {
                  controller.deleteUserAccount();
                },
                child: const Text('Confirm'))
          ],
        )),
      ),
    );
  }
}
