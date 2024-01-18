// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:google_fonts/google_fonts.dart';

// BodyTextWidget: StatelessWidget Class
class BodyTextWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String text;
  final Color color;

  // Constructor
  const BodyTextWidget({
    required this.text,
    required this.color,
    super.key,
  });

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Text(
      text,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        height: 1.5,
        wordSpacing: 5.0,
      ),
    );
  }
}
