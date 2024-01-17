// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:animated_text_kit/animated_text_kit.dart';

// Widgets
import '../widgets/common/footer_widget.dart';

// UnderConstructionPage: StatelessWidget Class
class UnderConstructionPage extends StatelessWidget {
  // Static: Class Properties
  // static const String routeName = "/under-construction";
  static const String routeName = "/";

  // Final: Class Properties
  final String title = "Nebwin Tech\nUnder Construction!";
  final Color backgroundColor = const Color.fromRGBO(68, 150, 200, 1);
  final Color textColor = Colors.white;

  // Constructor
  const UnderConstructionPage({super.key});

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Final: Method Properties
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // Returning Widgets
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: (width < 400)
                    ? height - 100
                    : (height <= 600)
                        ? height - 100
                        : height - 220,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: backgroundColor,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/nebwin_logo_white.png",
                      width: 200.0,
                      height: 150,
                    ),
                    TextLiquidFill(
                      text: title,
                      waveColor: textColor,
                      boxBackgroundColor: backgroundColor,
                      textStyle: TextStyle(
                        fontSize: (width < 600) ? 40.0 : 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      boxHeight: 300.0,
                      boxWidth: 1000.0,
                    ),
                  ],
                ),
              ),
              FooterWidget(
                backgroundColor: backgroundColor,
                textColor: textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
