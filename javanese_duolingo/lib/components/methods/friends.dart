import 'package:flutter/material.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;
import 'package:javanese_duolingo/components/widgets/friends_singular.dart';
import 'package:javanese_duolingo/components/widgets/friends_follow.dart';

class friends_single extends StatelessWidget {
  String text1;
  String text2;
  String path;
  String redirect;

  friends_single({
    super.key,
    required this.text1,
    required this.text2,
    required this.path,
    required this.redirect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 16, 10, 16),
      child: InkWell(
        onTap: () {
          // print(redirect);
          Navigator.pushNamed(context, redirect);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  path,
                  width: 46,
                  height: 38,
                ),
                const SizedBox(
                  width: 15.2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(
                        fontFamily: "DIN Bold",
                        color: Colors.white,
                        fontSize: 19.258,
                      ),
                    ),
                    const Divider(
                      height: 2,
                    ),
                    Text(
                      text2,
                      style: const TextStyle(
                        fontFamily: "DIN Regular",
                        color: Color(0xff54636B),
                        fontSize: 14.443,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              "assets/friends/arrow.png",
              width: 36,
              height: 38,
            ),
          ],
        ),
      ),
    );
  }
}

class friends_suggestion_single extends StatelessWidget {
  String text1;
  String text2;
  String path;
  String redirect;

  friends_suggestion_single({
    super.key,
    required this.text1,
    required this.text2,
    required this.path,
    required this.redirect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 16, 10, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                path,
                width: 46,
                height: 38,
              ),
              const SizedBox(
                width: 15.2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                      fontFamily: "DIN Bold",
                      color: Colors.white,
                      fontSize: 19.258,
                    ),
                  ),
                  const Divider(
                    height: 2,
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                      fontFamily: "DIN Regular",
                      color: Color(0xff54636B),
                      fontSize: 14.443,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            "assets/friends/arrow.png",
            width: 36,
            height: 38,
          ),
        ],
      ),
    );
  }
}

Column friends_search_bar() {
  return Column(
    children: [
      TextField(
        style: const TextStyle(
          fontFamily: "DIN Regular",
          color: Colors.white,
          fontSize: 19.258,
        ),
        decoration: InputDecoration(
            filled: true,
            fillColor: Konstanta.DIVIDER,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            hintText: "Email, name, or username",
            hintStyle: const TextStyle(
              fontFamily: "DIN Regular",
              color: Color(0xff54636B),
              fontSize: 19.258,
            ),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Konstanta.MAGNIFIER),
      ),
      const SizedBox(
        height: 16.13,
      ),
      const Divider(
        thickness: 3,
        color: Konstanta.DIVIDER,
      ),
    ],
  );
}

Padding friends_top_box() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 17.5, 0, 0),
    child: Container(
      // color: Konstanta.BACKGROUND_COLOR,
      decoration: BoxDecoration(
        color: Konstanta.BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(14.4), // Adjust the value as needed
        border: Border.all(
          color: Konstanta.DIVIDER, // Set the border color here
          width: 2, // Set the border width here
        ),
      ),
      child: Column(
        children: [
          friends_single(
            text1: "Find contacts",
            text2: "Find your friends on Duolingo",
            path: "assets/friends/Find Contacts.png",
            redirect: "/",
          ),
          const Divider(
            thickness: 3,
            color: Konstanta.DIVIDER,
          ),
          friends_single(
            text1: "Connect to Facebook",
            text2: "See who you know on Duolingo",
            path: "assets/friends/Connect to facebook.png",
            redirect: "/",
          ),
          const Divider(
            thickness: 3,
            color: Konstanta.DIVIDER,
          ),
          friends_single(
            text1: "Invite friends",
            text2: "Learn together with friends",
            path: "assets/friends/ticket.png",
            redirect: "/",
          ),
        ],
      ),
    ),
  );
}

Padding friends_who_to_follow() {
  return const Padding(
    padding: EdgeInsets.fromLTRB(6, 28, 28, 28),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Who to follow",
            style: TextStyle(
              fontFamily: "DIN Bold",
              color: Colors.white,
              fontSize: 23.187,
            ),
          ),
        ],
      ),
    ),
  );
}

SingleChildScrollView friends_collections() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        friends_follow(
          name: 'Central Cee',
          path: "assets/friends/cee.png",
        ),
        friends_follow(
          name: 'ice spice',
          path: "assets/friends/Ice Spice.png",
        ),
        friends_follow(
          name: 'travis scott',
          path: "assets/friends/travis.png",
        ),
        friends_follow(
          name: 'jackboys',
          path: "assets/friends/jackboys.png",
        )
      ],
    ),
  );
}

Padding friends_friend_suggestions() {
  return const Padding(
    padding: EdgeInsets.fromLTRB(6, 28, 28, 28),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friend suggestions",
            style: TextStyle(
              fontFamily: "DIN Bold",
              color: Colors.white,
              fontSize: 23.187,
            ),
          ),
        ],
      ),
    ),
  );
}

Container friends_suggestions_collection() {
  return Container(
    decoration: BoxDecoration(
      color: Konstanta.BACKGROUND_COLOR,
      borderRadius: BorderRadius.circular(14.4), // Adjust the value as needed
      border: Border.all(
        color: Konstanta.DIVIDER, // Set the border color here
        width: 2, // Set the border width here
      ),
    ),
    child: Column(
      children: [
        friends_suggestion_single(
          text1: "Pop Smoke",
          text2: "From your league",
          path: "assets/friends/popsmoke.png",
          redirect: '',
        ),
        const Divider(
          thickness: 3,
          color: Konstanta.DIVIDER,
        ),
        friends_suggestion_single(
          text1: "Dave",
          text2: "From your league",
          path: "assets/friends/dave.png",
          redirect: '',
        ),
      ],
    ),
  );
}
