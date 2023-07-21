import 'package:flutter/material.dart';

import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR_2,
        automaticallyImplyLeading: false,
        title: Center(
          child: ClickableAppBar(), // Align the ClickableAppBar in the middle
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context),
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/components/headers/main.png',
                    width: 348,
                    height: 668,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: EdgeInsets.all(20),
                color: Konstanta.BUTTON_KUNING,
                // height: 20,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                          Navigator.pushNamed(context, "/loading");
                        },
                        child: Image.asset(
                          'assets/components/guidebook_button.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/components/headers/main2.png',
                    width: 420,
                    height: 571,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(children: [
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
            ]),
          ],
        ),
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
            onTap: () {},
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
