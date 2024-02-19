import 'package:beyond_ableism/features/community/presentation/pages/community_page.dart';
import 'package:beyond_ableism/features/users/presentation/pages/help_page.dart';
import 'package:beyond_ableism/features/users/presentation/pages/main_page.dart';
import 'package:beyond_ableism/features/users/presentation/pages/profile_page.dart';
import 'package:beyond_ableism/features/talent_and_skills/presentation/pages/talent_show_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;

  final List _pages = const [
    MainPage(),
    CommunityPage(),
    TalentShowPage(),
    HelpPage(),
    ProfilePage()
  ];
  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Community"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_accessibility), label: "Talent"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
