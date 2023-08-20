import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;
import 'package:url_launcher/url_launcher.dart';

class ButtonFeed extends StatelessWidget {
  late String text1;
  late Color colorBase;
  late Color colorBackdrop;
  late Color colorText;
  late double width;
  late double height;
  late String path;
  late String routing;
  late String isDuolingo;

  ButtonFeed({
    super.key,
    this.text1 = "",
    required this.colorBase,
    required this.colorBackdrop,
    required this.colorText,
    this.width = 394,
    this.height = 43.202,
    this.path = "",
    this.routing = "",
    this.isDuolingo = "false",
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width, height),
              maximumSize: Size(width, height),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.242),
              ),
              backgroundColor: colorBackdrop,
            ),
            child: null,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (routing != "") {
              Navigator.pushNamed(context, routing);
            }
            if (isDuolingo == "true") {
              _launchURL();
            }
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(width, height),
            maximumSize: Size(width, height),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.242),
              side: BorderSide(
                color: colorBackdrop,
                width: 3,
              ), // Set border color and width
            ),
            backgroundColor: colorBase,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (path
                  .isNotEmpty) // Condition to check if the path is not empty
                Image.asset(
                  path,
                  width: 23,
                  height: 17,
                ),
              if (path.isNotEmpty) const SizedBox(width: 7.48),
              if (text1.isNotEmpty)
                Text(
                  text1,
                  style: TextStyle(
                    fontFamily: "DIN Bold",
                    color: colorText,
                    fontSize: 17.0,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

_launchURL() async {
  const url = 'https://www.duolingo.com'; // Replace with your desired URL
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
