import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

import 'package:javanese_duolingo/components/methods/mistakes_review.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';
import 'package:javanese_duolingo/components/widgets/single_mistakes.dart';

Padding mistakes_header() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mistakes Review",
                style: TextStyle(
                  fontFamily: "DIN Bold",
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 9),
              Text(
                "Quickly review your",
                style: TextStyle(
                  fontFamily: "DIN Regular",
                  color: Colors.white,
                  fontSize: 19,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "recent mistakes",
                style: TextStyle(
                  fontFamily: "DIN Regular",
                  color: Colors.white,
                  fontSize: 19,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/headers/reference.png",
          width: 100,
          height: 100,
        ),
      ],
    ),
  );
}

Align mistakes_counter() {
  return const Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.fromLTRB(18, 18, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Mistakes",
            style: TextStyle(
              fontFamily: "DIN Bold",
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 9),
          Text(
            "23 mistakes",
            style: TextStyle(
              fontFamily: "DIN Regular",
              color: Colors.white,
              fontSize: 19,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
  );
}

Column mistakes_collection() {
  return Column(
    children: [
      SingleMistakes(
        baseQuestion: "Matur Nuwun. Sami-sami.",
        translated: "Terima Kasih. Sama-sama.",
        tips: const [
          "1. Matur Nuwun : Ucapan terima kasih",
          "2. Ucapan setelah diucapkannya terima kasih, sebagai komplemen dari terima kasih seperti sama-sama, baik, tentu saja."
        ],
      ),
      SingleMistakes(
        baseQuestion: "Piye kabare, Le?",
        translated: "Apa kabarnya, Nak?",
        tips: const [
          "1. Piye : Bagaimana?",
          "2. Kabare : Menanyakan kabar",
          "3. Le : Panggilan untuk anak laki-laki dan lebih muda"
        ],
      ),
      SingleMistakes(
        baseQuestion: "Sugeng enjang seduluripun",
        translated: "Selamat pagi saudaraku sekalian",
        tips: const [
          "1. Sugeng : Ucapan selamat sebagai pembuka",
          "2. Enja/ing : Komplemen kata sugeng untuk pagi",
          "3. Sugeng enjang / Wilujeng enjing : Selamat Pagi",
          "4. Seduluripun : Saudara sekalian"
        ],
      ),
      SingleMistakes(
        baseQuestion: "Sugeng sonten kancaku!",
        translated: "Selamat siang, temanku!",
        tips: const [
          "1. Sugeng : Ucapan selamat sebagai pembuka",
          "2. Sonten : Komplemen kata sugeng untuk siang",
          "3. Sugeng sonten : Selamat Siang",
          "4. Kancaku : Ucapan yang ditujukan kepada teman sebaya sebagai tanda keakraban"
        ],
        isDivider: true,
      ),
    ],
  );
}

Padding mistakes_collection_with_container() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Konstanta.DIVIDER, // Customize the border color
          width: 2.0, // Adjust the border width as needed
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: mistakes_collection(),
    ),
  );
}
