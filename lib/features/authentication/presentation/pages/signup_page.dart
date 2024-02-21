import 'package:beyond_ableism/config/constants/colors.dart';
import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/getx/signup_controller.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_button_widget.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // final _formKey = GlobalKey<FormState>();
  // late final TextEditingController _firstName;
  // late final TextEditingController _lastName;
  // late final TextEditingController _username;
  // late final TextEditingController _email;
  // late final TextEditingController _phoneNumber;
  // late final TextEditingController _address;
  // late final TextEditingController _password;

  // @override
  // void initState() {
  //   _firstName = TextEditingController();
  //   _lastName = TextEditingController();
  //   _username = TextEditingController();
  //   _email = TextEditingController();
  //   _phoneNumber = TextEditingController();
  //   _address = TextEditingController();
  //   _password = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _firstName.dispose();
  //   _lastName.dispose();
  //   _username.dispose();
  //   _email.dispose();
  //   _phoneNumber.dispose();
  //   _address.dispose();
  //   _password.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingMain,
              vertical: AppDimensions.paddingMain),
          child: Form(
            key: controller.signupFormkey,
            child: Column(
              children: [
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                const Text(
                  'Let\'s create your account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: AppDimensions.spacing40,
                ),
                OnBoardingTextWidget(
                    label: 'First Name',
                    inputController: controller.firstName,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Last Name',
                    inputController: controller.lastName,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Username',
                    inputController: controller.username,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'E-Mail',
                    inputController: controller.email,
                    icon: Icons.email),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Phone Number',
                    inputController: controller.phoneNumber,
                    icon: Icons.phone),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Address',
                    inputController: controller.address,
                    icon: Icons.location_city),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingPasswordTextWidget(
                    label: 'Password', inputController: controller.password),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                OnBoardingButtonWidget(
                  onpressed: controller.signup,
                  text: 'Create Account',
                  bgcolor: AppColors.buttonColor,
                ),
                SizedBox(
                  height: AppDimensions.spacing10,
                ),
                  Center(
                  child: Text(
                    'Or signup with',
                    style: TextStyle(fontSize: AppDimensions.fontSmall),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image(
                      image: const AssetImage('images/onboarding/google.png'),
                      width: AppDimensions.width50,
                    ),
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
