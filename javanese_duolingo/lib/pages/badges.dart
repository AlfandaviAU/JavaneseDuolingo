import 'package:flutter/material.dart';
import 'package:javanese_duolingo/components/widgets/button.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/button_custom.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:share/share.dart';

import '../components/methods/friends.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(63),
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
                    image: AssetImage("assets/components/frame_badges_1.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 47, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/goals");
                  },
                  child: Container(
                    color: Konstanta.BACKGROUND_COLOR,
                    width: 215,
                    height: 58,
                    child: const Center(
                      child: Text(
                        "GOALS",
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
        child: navbar(context, 2),
      ),
      body: Container(
        color: Konstanta.BACKGROUND_COLOR,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/components/frame_badges_2.png",
                width: 428,
                height: 380,
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(6, 28, 28, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Share Your Badges",
                              style: TextStyle(
                                fontFamily: "DIN Bold",
                                color: Colors.white,
                                fontSize: 23.187,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 17.5, 0, 0),
                      child: Container(
                        // color: Konstanta.BACKGROUND_COLOR,
                        decoration: BoxDecoration(
                          color: Konstanta.BACKGROUND_COLOR,
                          borderRadius: BorderRadius.circular(
                              14.4), // Adjust the value as needed
                          border: Border.all(
                            color:
                                Konstanta.DIVIDER, // Set the border color here
                            width: 2, // Set the border width here
                          ),
                        ),
                        child: Column(
                          children: [
                            friends_single(
                              text1: "Share to contacts",
                              text2: "Share to your friends on Duolingo",
                              path: "assets/friends/Find Contacts.png",
                              redirect: "/",
                              mode: "contacts",
                            ),
                            const Divider(
                              thickness: 3,
                              color: Konstanta.DIVIDER,
                            ),
                            friends_single(
                              text1: "Upload to Facebook",
                              text2: "Upload your badge collections",
                              path: "assets/friends/Connect to facebook.png",
                              redirect: "/",
                              mode: "facebook",
                            ),
                            const Divider(
                              thickness: 3,
                              color: Konstanta.DIVIDER,
                            ),
                            friends_single(
                              text1: "Share with Friends",
                              text2: "Learn together with friends",
                              path: "assets/friends/ticket.png",
                              redirect: "/",
                              mode: "instagram",
                            ),
                          ],
                        ),
                      ),
                    )
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
