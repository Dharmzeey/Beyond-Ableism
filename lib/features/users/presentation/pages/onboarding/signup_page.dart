
import 'package:beyond_ableism/core/constants/dimensions.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _username;
  late final TextEditingController _password;

  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingMain,
            vertical: AppDimensions.paddingMain),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: AppDimensions.spacing120,
              ),
              const Text('Sign Up'),
              SizedBox(
                height: AppDimensions.spacing40,
              ),
              TextInputWidget(label: 'Username', inputController: _username),
              SizedBox(
                height: AppDimensions.spacing20,
              ),
              TextInputWidget(label: 'Password', inputController: _password),
              SizedBox(
                height: AppDimensions.spacing30,
              ),
              FilledButton(onPressed: () {}, child: const Text("Sign up")),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.abc_outlined, size: 24.0),
                label: const Text('Signup with Google'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
