import 'package:flutter/material.dart';
import 'package:javanese_duolingo/components/widgets/button_custom_with_border.dart';
import 'package:javanese_duolingo/components/widgets/button_feed.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

import '../components/widgets/button_custom.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Feed",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 19.258,
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(
              0.0), // Adjust the preferred height as needed
          child: Container(
            color: Konstanta.DIVIDER, // Set the color of the bottom border
            height: 3.0, // Set the height of the bottom border
          ),
        ),
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                Image.asset(
                  "assets/components/frame_duolingo_feed.png",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(33, 590, 0, 0),
              child: ButtonFeed(
                  text1: "VISIT SHOP",
                  colorBase: Konstanta.BACKGROUND_COLOR,
                  colorBackdrop: Konstanta.DIVIDER,
                  colorText: Konstanta.TEKS_BIRU,
                  width: 150,
                  height: 54,
                  // isDuolingo: "true",
                  routing: "/shop"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 1955, 0, 0),
              child: ButtonCustom(
                text1: "VISIT US",
                colorBase: Konstanta.BUTTON_KUNING,
                colorBackdrop: Konstanta.BUTTON_KUNING_BACKDROP,
                colorText: Colors.black,
                width: 150,
                height: 54,
                isDuolingo: "true",
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
