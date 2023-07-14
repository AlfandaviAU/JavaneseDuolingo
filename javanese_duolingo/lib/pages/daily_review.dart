import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class DailyReview extends StatelessWidget {
  const DailyReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Your other widgets here
              ],
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              "assets/components/today_review.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
