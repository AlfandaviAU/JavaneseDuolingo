import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

import '../components/methods/friends.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search for friends",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 19.258,
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR,
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                children: [
                  friends_search_bar(),
                  friends_top_box(),
                  friends_who_to_follow(),
                  friends_collections(),
                  friends_friend_suggestions(),
                  friends_suggestions_collection()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
