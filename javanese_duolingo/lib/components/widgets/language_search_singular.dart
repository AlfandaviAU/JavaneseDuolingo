import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/widgets/search_bar.dart';

class LanguageSearchSingular extends StatefulWidget {
  final String name;
  final String path;

  LanguageSearchSingular({
    required this.name,
    required this.path,
    Key? key,
  }) : super(key: key);

  @override
  _LanguageSearchSingularState createState() => _LanguageSearchSingularState();
}

class _LanguageSearchSingularState extends State<LanguageSearchSingular> {
  bool isClicked = false;

  void handleClick() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color rowColor = isClicked ? Konstanta.DIVIDER : Colors.transparent;

    return GestureDetector(
      onTap: handleClick,
      child: Container(
        color: rowColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Image.asset(
                      widget.path,
                      width: 42,
                      height: 42,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          fontFamily: "DIN Bold",
                          color: Colors.white,
                          fontSize: 19.258,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
                color: Konstanta.DIVIDER,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
