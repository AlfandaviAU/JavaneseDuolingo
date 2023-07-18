import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shop",
            style: TextStyle(
              fontFamily: "DIN Bold",
              color: Colors.white,
              fontSize: 19.258,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Image.asset("assets/headers/gems.png"),
          ],
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/headers/shop1.png",
                    width: 427,
                    height: 449,
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/headers/shop2.png",
                    width: 428,
                    height: 731,
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/headers/shop3.png",
                    width: 427,
                    height: 248,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
