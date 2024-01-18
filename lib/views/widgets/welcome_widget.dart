// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:google_fonts/google_fonts.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// WelcomeWidget: StatelessWidget Class
class WelcomeWidget extends StatelessWidget {
  // Constructor
  const WelcomeWidget({super.key});

  // Final: Class Properties
  final String section = "Welcome";

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: SizesConstant.width,
      height: SizesConstant.height,
      alignment: Alignment.center,
      color: const Color(0xffe5f1f7),
      child: Stack(
        children: [
          Positioned(
            top: 50.0,
            // right: -30.0,
            right: 0.0,
            child: Image.asset(
              "assets/images/page_01/webpage_3d_logo_1.png",
              width: 500.0,
              height: 500.0,
            ),
          ),
          Positioned(
            left: 0.0,
            child: Image.asset(
              "assets/images/page_01/background_big.png",
              width: MediaQuery.of(context).size.width,
              height: SizesConstant.height,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Image.asset("assets/images/page_01/background_small.png"),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/page_01/webpage_3d_logo_2.png",
                  width: 300.0,
                  height: 300.0,
                ),
                Text(
                  "Design The Future",
                  style: GoogleFonts.roboto(
                    fontSize: 43.6,
                    color: ColorsConstant.whiteColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
