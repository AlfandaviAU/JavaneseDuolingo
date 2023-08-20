import 'package:flutter/material.dart';
import 'package:javanese_duolingo/pages/hanacaraka.dart';
import 'pages/duolingo_super.dart';
import 'pages/goals.dart';
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
import 'pages/achievements.dart';
import 'pages/badges.dart';
import 'pages/hanacaraka.dart';
import 'pages/learning.dart';
import 'pages/learning2.dart';
import 'pages/mistake_eraser.dart';
import 'pages/streak.dart';
import 'pages/advanced_league.dart';
import 'pages/jump_ahead.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
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
        "/achievements": (context) => Achievements(),
        "/goals": (context) => Goals(),
        "/badges": (context) => Badges(),
        "/hanacaraka": (context) => Hanacaraka(),
        "/learning": (context) => Learning(),
        "/learning2": (context) => Learning2(),
        "/mistake_eraser": (context) => MistakeEraser(),
        "/streak": (context) => Streak(),
        "/advanced_league": (context) => AdvancedLeague(),
        "/jump_ahead": (context) => JumpAhead(),
        "/super": (context) => DuolingoSuper(),
      },
    ));
