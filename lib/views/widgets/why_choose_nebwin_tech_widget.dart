// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// WhyChooseNebwinTechWidget: StatelessWidget Class
class WhyChooseNebwinTechWidget extends StatelessWidget {
  // Constructor
  const WhyChooseNebwinTechWidget({super.key});

  // Final: Class Properties
  final String section = "Why Choose Nebwin Tech";

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
      color: Colors.deepOrange,
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
