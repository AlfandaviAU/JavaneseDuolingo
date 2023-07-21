import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';

Container navbar(BuildContext context) {
  List<String> routeNames = [
    "/",
    "/hanacaraka",
    "/goals",
    "/daily_review",
    "/achievements",
    "/profile",
  ];

  int selectedIndex = 0;

  return Container(
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Konstanta.DIVIDER,
          width: 3.0,
        ),
      ),
    ),
    child: BottomNavigationBar(
      showSelectedLabels: false,
      currentIndex: selectedIndex,
      onTap: (index) {
        Navigator.pushNamed(context, routeNames[index]);
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/Home.png"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/Hanacaraka.png"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/Chest.png"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/Keris.png"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/Achievement.png"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/Person.png"),
          label: "",
        ),
      ],
    ),
  );
}
