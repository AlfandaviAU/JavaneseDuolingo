import 'package:flutter/material.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';

Row Username() {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Capy",
              style: TextStyle(
                fontFamily: "DIN Bold",
                color: Colors.white,
                fontSize: 24.133,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 3.34,
            ),
            const Text(
              "CapyDavi",
              style: TextStyle(
                fontFamily: "DIN Regular",
                color: Colors.white,
                fontSize: 14.48,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8.63,
            ),
            const Text(
              "Joined April 2022",
              style: TextStyle(
                fontFamily: "DIN Regular",
                color: Colors.white,
                fontSize: 14.48,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/headers/flag_collection.png",
                    width: 167,
                    height: 21.72,
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Text(
                  "1 Following",
                  style: TextStyle(
                    fontFamily: "DIN Bold",
                    color: Konstanta.BUTTON_KUNING,
                    fontSize: 14.48,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 14.29,
                ),
                Text(
                  "1 Follower",
                  style: TextStyle(
                    fontFamily: "DIN Bold",
                    color: Konstanta.BUTTON_KUNING,
                    fontSize: 14.48,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            Image.asset(
              "assets/headers/profile.png",
              width: 120,
              height: 120,
            )
          ],
        ),
      ),
    ],
  );
}

Padding AddFriends() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
    child: Row(
      children: [
        ButtonCustom(
          text1: "Add Friends",
          colorBase: Konstanta.BUTTON_KUNING,
          colorBackdrop: Konstanta.BUTTON_KUNING_BACKDROP,
          colorText: Colors.black,
          width: 290,
          height: 47,
          path: "assets/headers/add_user.png",
          routing: "/friends",
        ),
        const SizedBox(
          width: 10.78,
        ),
        InkWell(
          onTap: () {
            print("Share");
          },
          child: Image.asset(
            "assets/headers/Share Button.png",
            width: 62,
            height: 50,
          ),
        ),
      ],
    ),
  );
}
