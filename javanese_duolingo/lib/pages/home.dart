import 'package:flutter/material.dart';

import 'package:javanese_duolingo/components/widgets/navbar.dart';
import 'package:javanese_duolingo/const.dart' as Konstanta;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Main Routing Here",
      )),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor:
              Konstanta.BACKGROUND_COLOR, // Set the background color to black
        ),
        child: navbar(context),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: const Text("Loading"))
        ],
      ),
    );
  }
}
