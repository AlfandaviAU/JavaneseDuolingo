// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, "/learning");
    });
    return Scaffold(
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 248.0,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "FUN FACTS ABOUT",
                    style: TextStyle(
                      fontFamily: "DIN Bold",
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "SLAMETAN",
                    style: TextStyle(
                      fontFamily: "DIN Bold",
                      color: Konstanta.BUTTON_KUNING,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 32, 0, 17),
                  child: Image.asset(
                    "assets/duo/Duo Slametan.png",
                    width: 168.482,
                    height: 148,
                  ),
                ),
                Center(
                  child: Text(
                    "LOADING...",
                    style: TextStyle(
                      fontFamily: "DIN Bold",
                      color: Konstanta.BUTTON_KUNING,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 42,
                    ),
                    child: Text(
                      "Slametan merupakan serangkaian upacara dan pemberian makanan kepada tamu sebagai bentuk penghormatan pada acara penting seperti kehamilan, perkawinan",
                      style: TextStyle(
                        fontFamily: "DIN Regular",
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
