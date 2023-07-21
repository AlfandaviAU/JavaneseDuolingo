import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class Learning2 extends StatelessWidget {
  const Learning2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(1000),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/mistake_eraser");
                },
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("assets/components/frame_learning_2.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
    );
  }
}
