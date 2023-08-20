import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

import 'package:javanese_duolingo/components/methods/mistakes_review.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';

class SingleMistakes extends StatefulWidget {
  final String baseQuestion;
  final String translated;
  final List<String> tips;
  final bool isDivider;

  SingleMistakes({
    required this.baseQuestion,
    required this.translated,
    required this.tips,
    this.isDivider = false,
    Key? key,
  }) : super(key: key);

  @override
  _SingleMistakesState createState() => _SingleMistakesState();
}

class _SingleMistakesState extends State<SingleMistakes> {
  bool showContent = false;

  void toggleContent() {
    setState(() {
      showContent = !showContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: toggleContent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    widget.baseQuestion,
                    style: const TextStyle(
                      fontFamily: "DIN Bold",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: toggleContent,
                child: Row(
                  children: [
                    Icon(
                      showContent
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_right,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (showContent)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.translated,
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
                children: widget.tips.map((tip) {
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
            ],
          ),
        if (!widget.isDivider)
          const Divider(
            thickness: 2,
            color: Konstanta.DIVIDER,
          ),
      ],
    );
  }
}
