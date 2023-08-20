import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

import 'package:javanese_duolingo/components/methods/mistakes_review.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/components/widgets/button_custom.dart';

class Mistakes extends StatelessWidget {
  const Mistakes({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    void updateSelectedIndex(int newIndex) {
      selectedIndex = newIndex;
    }

    return Scaffold(
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR,
      ),
      bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor:
                Konstanta.BACKGROUND_COLOR, // Set the background color to black
          ),
          child: navbar(context, 3)),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/batik/Batik2.png"),
                    fit: BoxFit.cover,
                    opacity: 0.05)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  mistakes_header(),
                  const SizedBox(
                    height: 18.0,
                  ),
                  ButtonCustom(
                    text1: "START +20 XP",
                    colorBase: Konstanta.BUTTON_KUNING,
                    colorBackdrop: Konstanta.BUTTON_KUNING_BACKDROP,
                    colorText: Colors.black,
                    width: 390,
                    height: 45,
                    routing: "/loading",
                  ),
                  mistakes_counter(),
                  mistakes_collection_with_container(),
                  const SizedBox(
                    height: 160,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
