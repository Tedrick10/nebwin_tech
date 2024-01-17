// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ServicesWeOfferWidget: StatelessWidget Class
class ServicesWeOfferWidget extends StatelessWidget {
  // Constructor
  const ServicesWeOfferWidget({super.key});

  // Final: Class Properties
  final String section = "Services We Offer";

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
      color: Colors.green,
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
