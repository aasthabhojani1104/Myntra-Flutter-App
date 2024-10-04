import 'package:flutter/material.dart';
import 'package:myntra_ui/features/home_page/home_page.dart';
import 'package:myntra_ui/foundation/ab_icon/ab_icon.dart';

import '../category/category.dart';
import '../profile/profile_without_login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [HomePage(), CategoryPage(), ProfileWithoutLogin()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {});
          currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.window_outlined), label: "category"),

          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Profile"),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
