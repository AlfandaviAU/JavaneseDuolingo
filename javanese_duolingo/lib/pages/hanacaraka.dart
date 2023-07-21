// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/components/widgets/button_custom_with_border.dart';

class Hanacaraka extends StatelessWidget {
  const Hanacaraka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR,
        title: const Text(
          "HANACARAKA",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Konstanta.BUTTON_KUNING,
            fontSize: 18,
          ),
        ),
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
      body: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(27, 27, 27, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Let’s learn Hanacaraka! ",
                    style: TextStyle(
                      fontFamily: "DIN Bold",
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
              Center(
                child: Text(
                  "Get to know the main writing system in Javanese",
                  style: TextStyle(
                    fontFamily: "DIN Regular",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ButtonCustomWithBorder(
          text1: "TIPS",
          colorBase: Konstanta.BACKGROUND_COLOR,
          colorBackdrop: Konstanta.DIVIDER,
          colorText: Konstanta.BUTTON_KUNING,
          routing: "/guidebook",
        ),
        SizedBox(
          height: 5,
        ),
        ButtonCustom(
          text1: "LEARN THE CHARACTERS",
          colorBase: Konstanta.BUTTON_KUNING,
          colorBackdrop: Konstanta.BUTTON_KUNING_BACKDROP,
          colorText: Colors.black,
          routing: "/loading",
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/components/frame_hanacaraka_1.png",
          width: 428,
          height: 388,
        ),
      ]),
    );
  }
}
