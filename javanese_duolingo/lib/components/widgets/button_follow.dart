import 'package:flutter/material.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;
import 'package:url_launcher/url_launcher.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class ButtonFollow extends StatefulWidget {
  late double width;
  late double height;
  late String path;
  late String routing;
  late String isDuolingo;
  late String imagePath;
  late String imageName;

  ButtonFollow({
    super.key,
    this.width = 394,
    this.height = 43.202,
    this.path = "",
    this.routing = "",
    this.isDuolingo = "false",
    required this.imagePath,
    required this.imageName,
  });

  @override
  State<ButtonFollow> createState() => _ButtonFollowState();
}

class _ButtonFollowState extends State<ButtonFollow> {
  String text1 = "FOLLOW";
  bool condFollow = false;
  Color colorBase = Konstanta.BUTTON_KUNING;
  Color colorBackdrop = Konstanta.BUTTON_KUNING_BACKDROP;
  Color colorText = Colors.black;

  void _toggleFollow() {
    setState(() {
      condFollow = !condFollow;
      if (condFollow) {
        colorBase = Konstanta.BUTTON_KUNING_AFTER;
        text1 = "UNFOLLOW";
      } else {
        colorBase = Konstanta.BUTTON_KUNING;
        text1 = "FOLLOW";
      }
    });
  }

  void _showFollowPopup(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogBackgroundColor: Konstanta.BACKGROUND_COLOR,
      btnOkColor: Konstanta.BUTTON_KUNING,
      btnCancelColor: Konstanta.BUTTON_KUNING_AFTER,
      dialogType: DialogType.NO_HEADER,
      animType: AnimType.SCALE,
      body: Column(
        children: [
          Image.asset(
            widget.imagePath, // Change to your image path
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 20),
          Text(
            widget.imageName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              // fontFamily: "DIN Bold",
            ),
          ),
          const SizedBox(height: 10),
          Text(
            condFollow ? 'Unfollow this user?' : 'Follow this user?',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "DIN Semibold",
              fontSize: 16,
            ),
          ),
        ],
      ),
      btnCancelOnPress: () {},
      btnOkOnPress: _toggleFollow,
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(widget.width, widget.height),
              maximumSize: Size(widget.width, widget.height),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.242),
              ),
              backgroundColor: colorBase,
            ),
            child: null,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _showFollowPopup(context);
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(widget.width, widget.height),
            maximumSize: Size(widget.width, widget.height),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.242),
            ),
            backgroundColor: colorBase,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.path
                  .isNotEmpty) // Condition to check if the path is not empty
                Image.asset(
                  widget.path,
                  width: 23,
                  height: 17,
                ),
              if (widget.path.isNotEmpty) const SizedBox(width: 7.48),
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
