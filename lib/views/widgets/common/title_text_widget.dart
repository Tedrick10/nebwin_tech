// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:google_fonts/google_fonts.dart';

// TitleTextWidget: StatelessWidget Class
class TitleTextWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String text;
  final Color color;

  // Constructor
  const TitleTextWidget({
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
      style: GoogleFonts.workSans(
        color: color,
        fontSize: 48,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
      ),
    );
  }
}
