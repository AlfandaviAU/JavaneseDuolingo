import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Setting",
          style: TextStyle(
            fontFamily: "DIN Bold",
            color: Colors.white,
            fontSize: 19.258,
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        backgroundColor: Konstanta.BACKGROUND_COLOR,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(
              0.0), // Adjust the preferred height as needed
          child: Container(
            color: Konstanta.DIVIDER, // Set the color of the bottom border
            height: 3.0, // Set the height of the bottom border
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Add your onClick functionality here
              // print('Clicked on settings');
              Navigator.pushNamed(context, "/profile");
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 12.61, 0),
              child: Text(
                "DONE",
                style: TextStyle(
                  fontFamily: "DIN Bold",
                  color: Konstanta.BUTTON_KUNING,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/batik/Batik1.png"),
            fit: BoxFit.cover,
            opacity: 0.0,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/components/frame_settings_1.png",
                width: 600,
                height: 600,
              ),
              Image.asset(
                "assets/components/frame_settings_2.png",
                width: 600,
                height: 600,
              ),
              Image.asset(
                "assets/components/frame_settings_3.png",
                width: 600,
                height: 600,
              ),
              Image.asset(
                "assets/components/frame_settings_4.png",
                width: 600,
                height: 800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
