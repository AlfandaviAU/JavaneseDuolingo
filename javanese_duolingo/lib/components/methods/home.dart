import 'package:flutter/material.dart';

import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';

class JumpAheadWidget extends StatelessWidget {
  const JumpAheadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/components/frame_jump_section.png',
        width: 428,
        height: 260,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 185, 0, 0),
        child: ButtonCustom(
          text1: "JUMP HERE?",
          colorBase: Konstanta.BUTTON_KUNING,
          colorBackdrop: Konstanta.BUTTON_KUNING_BACKDROP,
          colorText: Colors.black,
          width: 395,
          height: 47,
          routing: "/jump_ahead",
        ),
      ),
    ]);
  }
}

class Unit3 extends StatelessWidget {
  const Unit3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Konstanta.BUTTON_KUNING,
        // height: 20,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Unit 3",
                style: TextStyle(
                  fontFamily: "DIN Bold",
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
              Text(
                "Talk about people, nature, sport \nand etc",
                style: TextStyle(
                  fontFamily: "DIN Bold",
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/guidebook");
            },
            child: Image.asset(
              'assets/components/guidebook_button.png',
              width: 50,
              height: 50,
            ),
          ),
        ]),
      ),
    );
  }
}

class ClickableAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight, // Height of the AppBar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/language");
            },
            child: Image.asset(
              'assets/components/headers/japan.png',
              width: 60,
              height: 40,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/components/headers/fire.png',
              width: 65,
              height: 40,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/shop");
            },
            child: Image.asset(
              'assets/components/headers/gems.png',
              width: 96,
              height: 50,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/super");
            },
            child: Image.asset(
              'assets/components/headers/duo.png',
              width: 55,
              height: 56,
            ),
          ),
        ],
      ),
    );
  }
}
