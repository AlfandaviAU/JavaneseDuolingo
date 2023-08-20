import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

import '../components/widgets/button_with_no.dart';
import 'package:javanese_duolingo/components/methods/guidebook.dart';

class GuidebookTips extends StatelessWidget {
  const GuidebookTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Konstanta.BACKGROUND_COLOR,
        elevation: 0,
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  guidebook_image(),
                  guidebook_header(),
                  guidebook_content(),
                  const SizedBox(height: 160), // Adjust the height as needed
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 168,
                width: 420,
                decoration: const BoxDecoration(
                    color: Konstanta.BACKGROUND_COLOR,
                    border: Border(
                      top: BorderSide(
                        color: Konstanta.DIVIDER, // Customize the border color
                        width: 3.0, // Adjust the border width as needed
                      ),
                    )),
                padding: const EdgeInsets.fromLTRB(
                    0, 37, 0, 0), // Add margin as needed
                child: Button_with_no(
                  routing: "/mistakes",
                  text1: "REVIEW THIS UNIT",
                  text2: "RETURN TO HOME",
                  routing2: "/",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
