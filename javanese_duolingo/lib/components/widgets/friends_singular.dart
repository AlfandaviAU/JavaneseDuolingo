import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class FriendSearchSingular extends StatefulWidget {
  const FriendSearchSingular({super.key});

  @override
  State<FriendSearchSingular> createState() => _FriendSearchSingularState();
}

class _FriendSearchSingularState extends State<FriendSearchSingular> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Konstanta.BACKGROUND_COLOR,
        child: const Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      child: Text(
                        "Hello",
                        // widget.name,
                        style: TextStyle(
                          fontFamily: "DIN Bold",
                          color: Colors.white,
                          fontSize: 19.258,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Konstanta.DIVIDER,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      child: Text(
                        "Hello",
                        style: TextStyle(
                          fontFamily: "DIN Bold",
                          color: Colors.white,
                          fontSize: 19.258,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
