import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';

Container navbar(BuildContext context, int indexSelected) {
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
        _buildNavigationBarItem("assets/icons/Home.png", indexSelected == 0),
        _buildNavigationBarItem(
            "assets/icons/Hanacaraka.png", indexSelected == 1),
        _buildNavigationBarItem("assets/icons/Chest.png", indexSelected == 2),
        _buildNavigationBarItem("assets/icons/Keris.png", indexSelected == 3),
        _buildNavigationBarItem(
            "assets/icons/Achievement.png", indexSelected == 4),
        _buildNavigationBarItem("assets/icons/Person.png", indexSelected == 5),
      ],
    ),
  );
}

BottomNavigationBarItem _buildNavigationBarItem(
    String iconPath, bool isSelected) {
  return BottomNavigationBarItem(
    icon: Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(iconPath),
        if (isSelected)
          Positioned(
            bottom: 0,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Konstanta
                    .BUTTON_KUNING, // Customize the indicator color here
              ),
            ),
          ),
      ],
    ),
    label: "",
  );
}
