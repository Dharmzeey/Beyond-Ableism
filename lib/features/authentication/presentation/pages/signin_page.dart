import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/core/util/validators/validation.dart';
import 'package:beyond_ableism/features/authentication/presentation/getx/signin_controller.dart';
import 'package:beyond_ableism/features/authentication/presentation/pages/signup_page.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_button_widget.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // final _formKey = GlobalKey<FormState>();
  // late final TextEditingController _email;
  // late final TextEditingController _password;

  // @override
  // void initState() {
  //   _email = TextEditingController();
  //   _password = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _email.dispose();
  //   _password.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SigninController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingMain,
              vertical: AppDimensions.paddingMain),
          child: Form(
            key: controller.loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppDimensions.spacing50,
                ),
                Image(
                    image: const AssetImage(
                      'images/onboarding/app_icon.png',
                    ),
                    width: AppDimensions.width300),
                const Text(
                  'Welcome Back,',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Where physical disalilty is not intellectual incapacity.',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: AppDimensions.fontSmall),
                ),
                SizedBox(
                  height: AppDimensions.spacing40,
                ),
                OnBoardingTextWidget(
                    label: 'E-mail',
                    inputController: controller.email,
                    validatorFn: (value) => Validators.validateEMail(value),
                    icon: Icons.email),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingPasswordTextWidget(
                    label: 'Password',
                    inputController: controller.password,
                    validatorFn: (value) =>
                        Validators.validateEmptyText('password', value)),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) => controller.rememberMe.value =
                                !controller.rememberMe.value,
                          ),
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            fontSize: AppDimensions.fontSmall,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: AppDimensions.fontSmall,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                OnBoardingButtonWidget(
                  text: 'Sign in',
                  onpressed: controller.emailAndPasswordSignIn,
                  bgcolor: const Color.fromARGB(255, 38, 116, 180),
                ),
                SizedBox(
                  height: AppDimensions.spacing10,
                ),
                const OnBoardingButtonWidget(
                  text: 'Create Account',
                  bgcolor: Colors.black,
                  onpressed: _toSignup,
                ),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                Center(
                  child: Text(
                    'Or signin with',
                    style: TextStyle(fontSize: AppDimensions.fontSmall),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      print('Ima');
                      controller.googleSIgnIn();
                    },
                    child: Image(
                      image: const AssetImage('images/onboarding/google.png'),
                      width: AppDimensions.width50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _toSignup() {
  Get.to(() => const SignUpPage());
}
