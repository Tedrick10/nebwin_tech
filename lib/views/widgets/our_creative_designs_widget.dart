// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// OurCreativeDesignsWidget: StatelessWidget Class
class OurCreativeDesignsWidget extends StatelessWidget {
  // Constructor
  const OurCreativeDesignsWidget({super.key});

  // Final: Class Properties
  final String section = "Our Creative Designs";

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
      color: Colors.lightBlue,
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
