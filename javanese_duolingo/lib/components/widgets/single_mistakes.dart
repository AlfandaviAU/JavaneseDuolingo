import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

import 'package:javanese_duolingo/components/methods/mistakes_review.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';

class SingleMistakes extends StatelessWidget {
  late String baseQuestion;
  late String translated;
  late List<String> tips;
  late bool isDivider;

  SingleMistakes({
    required this.baseQuestion,
    required this.translated,
    required this.tips,
    this.isDivider = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/icons/Heart.png",
              width: 31,
              height: 40,
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              "Translate this sentence",
              style: TextStyle(
                fontFamily: "DIN Regular",
                color: Colors.white,
                fontSize: 19,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        Text(
          baseQuestion,
          style: const TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        Text(
          translated,
          style: const TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Tips : ",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: tips.map((tip) {
            return Column(
              children: [
                Text(
                  tip,
                  style: const TextStyle(
                    fontFamily: "DIN Bold",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
        const SizedBox(
          height: 5,
        ),
        if (!isDivider)
          const Divider(
            thickness: 2,
            color: Konstanta.DIVIDER,
          ),
      ],
    );
  }
}
