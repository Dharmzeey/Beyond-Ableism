import 'package:beyond_ableism/features/users/presentation/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
