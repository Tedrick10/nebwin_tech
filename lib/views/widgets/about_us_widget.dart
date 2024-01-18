// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/subtitle_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// AboutUsWidget: StatelessWidget Class
class AboutUsWidget extends StatelessWidget {
  // Constructor
  const AboutUsWidget({super.key});

  // Final: Class Properties
  final String title = "About Us";
  final String bodyText =
      "The “NEBWIN TECH “ is digital marketing agency \nfounded in 2019. Our team consists of creative \nprofessionals with a background of Marketing, IT who \ncan deliver exceptional approach in different areas. We \nhave  partnership with Local SME across the Country in \norder to create productive promo and digital \nadvertising projects .At Nebwin Tech, we are passionate \nabout crafting digital solutions that empower \nbusinesses to thrive in the ever-evolving landscape of \nthe online world.";

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Stack(
      children: [
        Positioned(
          top: 0.0,
          right: 0.0,
          child: Image.asset(
            "assets/images/page_02/webpage_hands.png",
            // width: 614.0,
            width: 1000.0,
            height: 768,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 100.0,
          left: -50.0,
          child: Image.asset(
            "assets/images/page_02/pencil.png",
            // width: 1200.0,
            height: 600.0,
          ),
        ),
        Container(
          width: SizesConstant.width,
          height: SizesConstant.height + 74,
          // alignment: Alignment.center,
          // color: ColorsConstant.whiteColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 77.0,
            vertical: 77.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 60.0,
                alignment: Alignment.centerLeft,
                child: TitleTextWidget(
                  text: title,
                  color: ColorsConstant.secondaryColor,
                ),
              ),
              const SizedBox(height: 37.0),
              Container(
                width: 150,
                height: 7.5,
                color: ColorsConstant.primaryColor,
              ),
              const SizedBox(height: 112.0),
              BodyTextWidget(
                text: bodyText,
                color: ColorsConstant.secondaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
