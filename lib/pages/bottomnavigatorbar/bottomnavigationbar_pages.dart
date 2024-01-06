
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:more_from_below/pages/home/home_pages.dart';
import 'package:more_from_below/pages/other/sign_up_code.dart';
import 'package:more_from_below/pages/other/sign_up_pages.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _currentIndex = 0;
  void ontapp(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> pages = [
    HomePages(),
    SignUp(),
    HomePages(),
    SignUpCode(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontapp,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black26,
        selectedItemColor: Colors.black,
        selectedLabelStyle:
        TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        unselectedLabelStyle:
        TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg'), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/order1.svg'),
              label: 'My Order'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/massages.svg'),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/profil.svg'),
              label: 'Profile'),
        ],
      ),
    );
  }
}