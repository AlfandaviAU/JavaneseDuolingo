import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class JumpUnit extends StatefulWidget {
  const JumpUnit({super.key});

  @override
  State<JumpUnit> createState() => _JumpUnitState();
}

class _JumpUnitState extends State<JumpUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 180,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 32, 0, 17),
              child: Image.asset(
                "assets/duo/Duo Jump.png",
                width: 181.818,
                height: 250,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Want to jump to Unit 3?",
              style: TextStyle(
                fontFamily: "DIN Bold",
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Center(
            child: Text(
              "Pass the test to jump ahead. We won’t make it",
              style: TextStyle(
                fontFamily: "DIN Regular",
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Center(
            child: Text(
              "easy for you through.",
              style: TextStyle(
                fontFamily: "DIN Regular",
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(394, 43.202),
              elevation: 10,
              shadowColor: Konstanta.BUTTON_KUNING_BACKDROP,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.242),
              ),
              backgroundColor: Konstanta.BUTTON_KUNING,
            ),
            child: const Text(
              "READ GUIDEBOOK",
              style: TextStyle(
                fontFamily: "DIN Bold",
                color: Colors.black,
                fontSize: 17.0,
              ),
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "NOT NOW",
                style: TextStyle(
                  fontFamily: "DIN Bold",
                  color: Konstanta.BUTTON_KUNING,
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
