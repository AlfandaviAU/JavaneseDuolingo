import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

import 'package:javanese_duolingo/components/methods/mistakes_review.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';

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
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context),
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
        ],
      ),
    );
  }
}
