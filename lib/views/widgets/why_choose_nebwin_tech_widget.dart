// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import './common/title_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// WhyChooseNebwinTechWidget: StatelessWidget Class
class WhyChooseNebwinTechWidget extends StatelessWidget {
  // Constructor
  WhyChooseNebwinTechWidget({super.key});

  // Final: Class Properties
  final String title = "Why Choose Nebwin Tech";
  final List<String> bodyTextList = [
    "Experienced Team: Our team is a blend of seasoned professionals and\ninnovative minds, working together to deliver cutting-edge solutions.",
    "Client-Centric Approach: We believe in forging long-lasting relationships\nwith our clients. Your success is our success.",
    "Quality Assurance: We are committed to delivering top-quality solutions that meet and\nexceed your expectations.",
    "Affordable Pricing: We offer competitive pricing without compromising\non the quality of our work.",
    "Continuous Support: Our commitment to your successdoesn't end with project delivery.\nWe provide ongoing support and updates to ensure your digital presence remains at its best.",
  ];

  // Build: Override Class Methods
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: SizesConstant.width,
      height: SizesConstant.height + 60,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/page_04/webpage_light_background3.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 77),
          Container(
            width: double.infinity,
            height: 60.0,
            alignment: Alignment.center,
            child: TitleTextWidget(
              text: title,
              color: ColorsConstant.whiteColor,
            ),
          ),
          const SizedBox(height: 93),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (String bodyText in bodyTextList) ...[
                BodyTextWidget(
                  text: bodyText,
                  color: ColorsConstant.whiteColor,
                ),
                const SizedBox(height: 25),
              ],
            ],
          ),
          const SizedBox(height: 129.0),
        ],
      ),
    );
  }
}
