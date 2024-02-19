import 'package:beyond_ableism/features/authentication/data/repositories/authentication_repository.dart';
// import 'package:beyond_ableism/features/authentication/presentation/pages/onboarding.dart';
import 'package:beyond_ableism/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

// Getx local storage
  await GetStorage.init();

  // Await splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 25,
          ),
          bodySmall: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 35,
          ),
        ),
      ),
      title: 'Beyond Ableism',
      debugShowCheckedModeBanner: false,
      // home: const OnboardingPage(),
      home: const Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
