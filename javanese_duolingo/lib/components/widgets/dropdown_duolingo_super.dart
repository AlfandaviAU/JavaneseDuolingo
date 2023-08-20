import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class DropdownSuper extends StatelessWidget {
  const DropdownSuper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180, // You can adjust the height as needed
      color: Konstanta.BACKGROUND_COLOR_2,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/super");
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/components/headers/duo.png', // Replace with your image asset path
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Duolingo Super",
                              style: TextStyle(
                                fontFamily: "DIN Bold",
                                color: Colors.white,
                                fontSize: 19.258,
                              )),
                          Text(
                            "Learn More About Duolingo Super Here",
                            style: TextStyle(
                              fontFamily: "DIN Regular",
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image.asset(
                    "assets/friends/arrow.png",
                    width: 36,
                    height: 38,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/feed");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 18, 0),
                        child: Image.asset(
                          'assets/headers/app_logo.png', // Replace with your image asset path
                          width: 60, // Adjust the width as needed
                          height: 60, // Adjust the height as needed
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Duolingo Feed",
                            style: TextStyle(
                              fontFamily: "DIN Bold",
                              color: Colors.white,
                              fontSize: 19.258,
                            ),
                          ),
                          Text(
                            "What's New About Duolingo?",
                            style: TextStyle(
                              fontFamily: "DIN Regular",
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Image.asset(
                      "assets/friends/arrow.png",
                      width: 36,
                      height: 38,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
