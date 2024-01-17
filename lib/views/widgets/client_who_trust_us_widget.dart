// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ClientWhoTrustUsWidget: StatelessWidget Class
class ClientWhoTrustUsWidget extends StatelessWidget {
  // Constructor
  const ClientWhoTrustUsWidget({super.key});

  // Final: Class Properties
  final String section = "Client Who Trust Us";

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
      color: Colors.cyan,
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
