import 'package:flutter/material.dart';
import 'pages/profile.dart';
import 'pages/daily_review.dart';
import 'pages/guidebook_tips.dart';
import 'pages/setting.dart';
import 'pages/shop.dart';
import 'pages/loading.dart';
import 'pages/home.dart';
import 'pages/jump_unit.dart';
import 'pages/mistakes_review.dart';
import 'pages/language.dart';
import 'pages/friends.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/setting",
      routes: {
        "/loading": (context) => Loading(),
        "/": (context) => Home(),
        "/shop": (context) => Shop(),
        "/friends": (context) => Friends(),
        "/jump": (context) => JumpUnit(),
        "/profile": (context) => Profile(),
        "/setting": (context) => Setting(),
        "/guidebook": (context) => GuidebookTips(),
        "/mistakes": (context) => Mistakes(),
        "/daily_review": (context) => DailyReview(),
        "/language": (context) => Language(),
      },
    ));
