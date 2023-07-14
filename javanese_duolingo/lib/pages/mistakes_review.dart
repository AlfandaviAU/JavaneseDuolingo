import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

import 'package:javanese_duolingo/components/methods/mistakes_review.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';

import '../components/widgets/navbar_single_image.dart';

class Mistakes extends StatelessWidget {
  const Mistakes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                mistakes_header(),
                const SizedBox(
                  height: 18.0,
                ),
                Button(text1: "START + 20 XP"),
                mistakes_counter(),
                mistakes_collection_with_container(),
                const SizedBox(
                  height: 160,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              width: 420,
              decoration: const BoxDecoration(
                  color: Konstanta.BACKGROUND_COLOR,
                  border: Border(
                    top: BorderSide(
                      color: Konstanta.DIVIDER, // Customize the border color
                      width: 2.0, // Adjust the border width as needed
                    ),
                  )),
              padding: const EdgeInsets.symmetric(
                  horizontal: 16), // Add margin as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  navbar_single_image(
                    path: 'assets/icons/Home.png',
                    width: 38,
                    height: 38,
                  ),
                  navbar_single_image(
                    path: 'assets/icons/Hanacaraka.png',
                    width: 40,
                    height: 40,
                  ),
                  navbar_single_image(
                    path: 'assets/icons/Chest.png',
                    width: 33,
                    height: 33,
                  ),
                  navbar_single_image(
                    path: 'assets/icons/Keris.png',
                    width: 56,
                    height: 42,
                  ),
                  navbar_single_image(
                    path: 'assets/icons/Achievement.png',
                    width: 38,
                    height: 38,
                  ),
                  navbar_single_image(
                    path: 'assets/icons/Person.png',
                    width: 45,
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
