import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import '../components/widgets/button_with_no.dart';

class JumpAhead extends StatelessWidget {
  const JumpAhead({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(1000),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: true,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/components/frame_jump_ahead.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 700, 0, 0),
                child: Column(
                  children: [
                    Button_with_no(
                      text1: "START EXAM",
                      text2: "READ GUIDEBOOK",
                      routing: "/learning",
                      routing2: "/guidebook",
                    ),
                    const SizedBox(height: 20), // Add spacing
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
    );
  }
}
