import 'package:flutter/material.dart';
import 'package:javanese_duolingo/components/widgets/navbar.dart';
import "package:javanese_duolingo/const.dart" as Konstanta;

import '../components/widgets/button_custom.dart';

class DuolingoSuper extends StatelessWidget {
  const DuolingoSuper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Konstanta.BACKGROUND_COLOR,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(880),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false, // Disable default back button
          leading: IconButton(
            // Add a custom back button
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Go back to the previous screen
            },
          ),
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/components/frame_duolingo_super.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
