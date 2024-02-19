import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/pages/login_page.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_text_input_widget.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _firstName;
  late final TextEditingController _lastName;
  late final TextEditingController _username;
  late final TextEditingController _email;
  late final TextEditingController _phoneNumber;
  late final TextEditingController _password;

  @override
  void initState() {
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _username = TextEditingController();
    _email = TextEditingController();
    _phoneNumber = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _username.dispose();
    _email.dispose();
    _phoneNumber.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingMain,
              vertical: AppDimensions.paddingMain),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                const Text('Let\'s create your account'),
                SizedBox(
                  height: AppDimensions.spacing40,
                ),
                OnBoardingTextWidget(
                    label: 'First Name',
                    inputController: _firstName,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Last Name',
                    inputController: _lastName,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Username',
                    inputController: _username,
                    icon: Icons.person),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'E-Mail',
                    inputController: _email,
                    icon: Icons.email),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingTextWidget(
                    label: 'Phone Number',
                    inputController: _phoneNumber,
                    icon: Icons.phone),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingPasswordTextWidget(
                    label: 'Password', inputController: _password),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                const OnBoardingButtonWidget(
                  text: 'Create Account',
                  color: Color.fromARGB(255, 38, 116, 180),
                ),
                SizedBox(
                  height: AppDimensions.spacing10,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.abc_outlined, size: 24.0),
                  label: const Text('Signup with Google'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
