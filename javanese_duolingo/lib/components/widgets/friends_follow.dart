import 'package:flutter/material.dart';
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/friends_singular.dart';

class friends_follow extends StatelessWidget {
  late String name;
  late String path;

  friends_follow({
    required this.name,
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 13, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Konstanta.BACKGROUND_COLOR,
          borderRadius:
              BorderRadius.circular(14.4), // Adjust the value as needed
          border: Border.all(
            color: Konstanta.DIVIDER, // Set the border color here
            width: 2, // Set the border width here
          ),
        ),
        width: 175,
        height: 250,
        child: Stack(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(48.11, 16.23, 56.81, 5.8),
                child: Image.asset(
                  path,
                  width: 69.5,
                  height: 69.5,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontFamily: "DIN Bold",
                  color: Colors.white,
                  fontSize: 23.187,
                ),
              ),
              const Text(
                "Follows you",
                style: TextStyle(
                  fontFamily: "DIN Regular",
                  color: Konstanta.DIVIDER,
                  fontSize: 17.39,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              ButtonCustom(
                text1: "FOLLOW",
                colorBase: Konstanta.BUTTON_KUNING,
                colorBackdrop: Konstanta.BUTTON_KUNING_BACKDROP,
                colorText: Colors.black,
                width: 133.906,
                height: 38.259,
              ),
            ]),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/friends/X.png",
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
