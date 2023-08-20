import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context, 4),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/batik/Batik1.png"),
            fit: BoxFit.cover,
            opacity: 0.0,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/components/frame_achievements_1.png",
                width: 434,
                height: 768,
              ),
              Image.asset(
                "assets/components/frame_achievements_2.png",
                width: 434,
                height: 197,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
