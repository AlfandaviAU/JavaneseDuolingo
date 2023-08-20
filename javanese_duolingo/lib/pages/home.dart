import 'package:flutter/material.dart';
import 'package:javanese_duolingo/components/widgets/dropdown_duolingo_super.dart';

import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/methods/home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool condSuper = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR_2,
        automaticallyImplyLeading: false,
        title: Center(
          child: ClickableAppBar(
            condSuper: condSuper,
            onDuoLogoTap: () {
              setState(() {
                condSuper = !condSuper;
              });
            },
          ), // Align the ClickableAppBar in the middle
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context),
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/loading");
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/components/headers/main.png',
                      width: 348,
                      height: 668,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/loading");
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/components/headers/main2.png',
                      width: 420,
                      height: 571,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const BatikBackground(),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 680, 0, 0),
            child: Unit3(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 1450, 0, 0),
            child: JumpAheadWidget(),
          ),
          if (condSuper) DropdownSuper(),
        ]),
      ),
    );
  }
}

class BatikBackground extends StatelessWidget {
  const BatikBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              child: Container(
                width: 430,
                height: 1000,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/batik/Batik2.png"),
                    fit: BoxFit.cover,
                    opacity: 0.05,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              child: Container(
                width: 430,
                height: 600,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/batik/Batik2.png"),
                    fit: BoxFit.cover,
                    opacity: 0.05,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
