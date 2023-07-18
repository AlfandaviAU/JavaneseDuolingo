import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';

class DailyReview extends StatelessWidget {
  const DailyReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(336),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/components/today_review.png"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 290, 232, 40),
                child: ButtonCustom(
                  text1: "START +20 XP",
                  colorBase: Colors.white,
                  colorBackdrop: Color(0xff8893AC),
                  colorText: Color(0xff3520CC),
                  width: 155,
                  height: 50,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context),
      ),

      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            "assets/components/your_collections.png",
            width: 428,
            height: 440,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/mistakes");
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 65, 10, 0),
              child: Image.asset(
                "assets/components/mistakes_button.png",
                width: 428,
                height: 81,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
