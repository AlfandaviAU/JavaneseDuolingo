import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

Column guidebook_image() {
  return Column(
    children: [
      const SizedBox(
        height: 34.1,
      ),
      Center(
        child: Image.asset(
          "assets/duo/Guidebook.png",
          width: 111,
          height: 232,
        ),
      ),
    ],
  );
}

Column guidebook_header() {
  return const Column(
    children: [
      Text(
        "Unit 2 Guidebook",
        style: TextStyle(
          fontFamily: "DIN Bold",
          color: Colors.white,
          fontSize: 25.837,
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 42,
          ),
          child: Text(
            "Explore grammar tips and key phrases for this unit",
            style: TextStyle(
              fontFamily: "DIN Regular",
              color: Colors.white,
              fontSize: 19.636,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Divider(
        thickness: 3,
        color: Konstanta.DIVIDER,
      ),
    ],
  );
}

Column guidebook_content() {
  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.fromLTRB(23, 25.66, 276, 12),
        child: Text(
          "KEY PHRASES",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Konstanta.KEY_PHRASES,
            fontSize: 19.636,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 202, 10),
        // padding: EdgeInsets.all(0),
        child: Text(
          "Introduce yourself",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 19.636,
          ),
        ),
      ),
      Center(
        child: Image.asset(
          "assets/duo/Bottom Dialogue.png",
          width: 362.235,
          height: 394.273,
        ),
      ),
      Center(
        child: Image.asset(
          "assets/duo/Bottom Dialogue.png",
          width: 362.235,
          height: 394.273,
        ),
      ),
      Center(
        child: Image.asset(
          "assets/duo/Bottom Dialogue.png",
          width: 362.235,
          height: 394.273,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
    ],
  );
}
