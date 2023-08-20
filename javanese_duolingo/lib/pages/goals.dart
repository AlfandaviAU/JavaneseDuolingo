import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/navbar.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    void updateSelectedIndex(int newIndex) {
      selectedIndex = newIndex;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(63),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Konstanta.BACKGROUND_COLOR,
                  image: DecorationImage(
                    image: AssetImage("assets/components/frame_goals_1.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(220, 47, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/badges");
                  },
                  child: Container(
                    color: Konstanta.BACKGROUND_COLOR,
                    width: 200,
                    height: 58,
                    child: const Center(
                      child: Text(
                        "BADGES",
                        style: TextStyle(
                          fontFamily: "DIN Bold",
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor:
                Konstanta.BACKGROUND_COLOR, // Set the background color to black
          ),
          child: navbar(context, 2)),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/components/frame_goals_2.png",
                // width: 500,
                // height: 800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
