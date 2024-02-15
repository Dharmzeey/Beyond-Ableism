import 'package:beyond_ableism/features/users/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      home: const HomePage(),
    );
  }
}
