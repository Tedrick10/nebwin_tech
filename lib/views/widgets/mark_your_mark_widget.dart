// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// MarkYourMarkWidget: StatelessWidget Class
class MarkYourMarkWidget extends StatelessWidget {
  // Constructor
  const MarkYourMarkWidget({super.key});

  // Final: Class Properties
  final String section = "Mark Your Mark";

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
      color: Colors.teal,
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
