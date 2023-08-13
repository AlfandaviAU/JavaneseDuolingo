import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

class Button extends StatelessWidget {
  late String text1;
  late String path;
  Button({super.key, required this.text1, this.path = ""});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(394, 43.202),
              // elevation: 10,
              // shadowColor: Konstanta.BUTTON_KUNING_BACKDROP,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.242),
              ),
              backgroundColor: Konstanta.BUTTON_KUNING_BACKDROP,
            ),
            child: null,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (path != "") {
              Navigator.pushNamed(context, "/");
            }
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(394, 43.202),
            // elevation: 10,
            // shadowColor: Konstanta.BUTTON_KUNING_BACKDROP,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.242),
            ),
            backgroundColor: Konstanta.BUTTON_KUNING,
          ),
          child: Text(
            text1,
            style: const TextStyle(
              fontFamily: "DIN Bold",
              color: Colors.black,
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }
}
