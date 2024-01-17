// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// AboutUsWidget: StatelessWidget Class
class AboutUsWidget extends StatelessWidget {
  // Constructor
  const AboutUsWidget({super.key});

  // Final: Class Properties
  final String section = "About Us";

  @override
  Widget build(BuildContext context) {
    // Final: Method Properties
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Returning Widgets
    return Container(
      width: screenWidth,
      height: screenHeight,
      alignment: Alignment.center,
      color: Colors.black,
      child: Text(
        section,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
