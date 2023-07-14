import 'package:flutter/material.dart';
import 'package:javanese_duolingo/pages/daily_review.dart';
import 'package:javanese_duolingo/pages/guidebook_tips.dart';
import 'pages/loading.dart';
import 'pages/home.dart';
import 'pages/jump_unit.dart';
import 'pages/mistakes_review.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/daily_review",
      routes: {
        "/": (context) => Loading(),
        "/home": (context) => Home(),
        "/jump": (context) => JumpUnit(),
        "/guidebook": (context) => GuidebookTips(),
        "/mistakes": (context) => Mistakes(),
        "/daily_review": (context) => DailyReview(),
      },
    ));
