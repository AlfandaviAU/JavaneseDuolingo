import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class Button_with_no extends StatelessWidget {
  late String text1;
  late String text2;
  late String routing;

  Button_with_no({
    super.key,
    required this.text1,
    required this.text2,
    this.routing = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
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
              if (routing != "") {
                Navigator.pushNamed(context, routing);
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
        ]),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            text2,
            style: const TextStyle(
              fontFamily: "DIN Bold",
              color: Konstanta.BUTTON_KUNING,
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }
}
