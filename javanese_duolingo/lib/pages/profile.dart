import 'package:flutter/material.dart';

import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

import '../components/methods/profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
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
        actions: [
          GestureDetector(
            onTap: () {
              // Add your onClick functionality here
              // print('Clicked on settings');
              Navigator.pushNamed(context, "/setting");
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12.61, 0),
              child: Image.asset("assets/headers/Gears.png"),
            ),
          ),
        ],
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/batik/Batik1.png"),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 27, 30, 0),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Username(),
                    AddFriends(),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 17.86, 0, 30.71),
                      child: Divider(
                        thickness: 3,
                        color: Konstanta.DIVIDER,
                      ),
                    ),
                    Image.asset(
                      "assets/headers/frame_profile.png",
                      width: 365.51,
                      height: 1095.26,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 1305, 0, 0),
                  child: InkWell(
                    onTap: () {
                      print("INKWELL");
                    },
                    child: ButtonCustom(
                      text1: "VISIT US",
                      colorBase: Konstanta.BUTTON_KUNING,
                      colorBackdrop: Konstanta.BUTTON_KUNING_BACKDROP,
                      colorText: Colors.black,
                      width: 135,
                      height: 43,
                      isDuolingo: "true",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
