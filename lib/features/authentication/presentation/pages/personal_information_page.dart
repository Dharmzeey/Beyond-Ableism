import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/authentication/presentation/widgets/onboarding_text_input_widget.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    // _firstName = TextEditingController();
    // _lastName = TextEditingController();
    // _username = TextEditingController();
    // _email = TextEditingController();
    // _phoneNumber = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingMain,
              vertical: AppDimensions.paddingMain),
          child: Form(
            key: _formKey,
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
                OnBoardingTextWidget(label: 'E-mail', inputController: _email, icon: Icons.email),
                SizedBox(
                  height: AppDimensions.spacing20,
                ),
                OnBoardingPasswordTextWidget(
                    label: 'Password', inputController: _password),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(fontSize: AppDimensions.fontSmall),
                        )
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: AppDimensions.fontSmall),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.spacing30,
                ),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: const Color.fromARGB(255, 38, 116, 180)),
                  child: const Text("Sign In"),
                ),
                SizedBox(
                  height: AppDimensions.spacing10,
                ),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                      side: const BorderSide(),
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.white),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.spacing10,
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.abc_outlined, size: 24.0),
                    label: const Text('Signin  with Google'),
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
