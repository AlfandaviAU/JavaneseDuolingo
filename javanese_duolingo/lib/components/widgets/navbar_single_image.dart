import 'package:flutter/material.dart';

class navbar_single_image extends StatelessWidget {
  String path;
  double width;
  double height;

  navbar_single_image({
    required this.path,
    required this.width,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("This");
      },
      child: Image.asset(
        path,
        width: width,
        height: height,
      ),
    );
  }
}
