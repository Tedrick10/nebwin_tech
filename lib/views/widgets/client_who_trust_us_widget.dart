// Flutter: Existing Libraries
import 'package:flutter/material.dart';
import 'package:nebwin_tech/views/widgets/common/subtitle_text_widget.dart';

// Flutter: External Libraries
import 'package:google_fonts/google_fonts.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// ClientWhoTrustUsWidget: StatelessWidget Class
class ClientWhoTrustUsWidget extends StatelessWidget {
  // Constructor
  ClientWhoTrustUsWidget({super.key});

  // Final: Class Properties
  final String title = "Client Who Trust Us";
  final String subtitle = "Elevate your brand and make your mark in history.";
  final List<Map<String, String>> advantageList = [
    {
      "image": "happy_client.png",
      "title": "Happy\nClient",
      "trailing": "125",
    },
    {
      "image": "social_media_design.png",
      "title": "Social Media\nDesign",
      "trailing": "1000+",
    },
    {
      "image": "logo.png",
      "title": "Logo",
      "trailing": "60+",
    },
    {
      "image": "media_buying_campaign.png",
      "title": "Media Buying\nCampaign",
      "trailing": "1000+",
    },
    {
      "image": "marketing_campaign.png",
      "title": "Marketing\nCampaign",
      "trailing": "30+",
    },
  ];

  Widget _advantageWidget(Map<String, String> advantage) {
    return Container(
      width: 397.0,
      height: 107.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 25.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: ColorsConstant.secondaryColor,
        ),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/page_03/${advantage["image"]}",
                    width: 50.0,
                    height: 50.0,
                  ),
                ],
              ),
              Text(
                advantage["title"]!,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: ColorsConstant.secondaryColor,
                  decoration: TextDecoration.none,
                ),
              )
            ],
          ),
          Text(
            advantage["trailing"]!,
            style: GoogleFonts.openSans(
              fontSize: 16.3,
              fontWeight: FontWeight.bold,
              color: ColorsConstant.secondaryColor,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Stack(
      children: [
        Positioned(
          right: -10.0,
          bottom: -70.0,
          child: Image.asset(
            "assets/images/page_03/webpage_handshake.png",
            height: 508.0,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 70.0,
          right: 10.0,
          child: Image.asset(
            "assets/images/page_03/webpage_trust_1.png",
            width: 400.0,
            height: 400.0,
          ),
        ),
        Container(
          width: SizesConstant.width,
          height: SizesConstant.height + 50,
          padding: const EdgeInsets.all(77.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleTextWidget(
                text: title,
                color: ColorsConstant.secondaryColor,
              ),
              SubtitleTextWidget(
                text: subtitle,
                color: ColorsConstant.secondaryColor,
              ),
              const SizedBox(height: 77.0),
              Row(
                children: [
                  _advantageWidget(advantageList[0]),
                  const SizedBox(width: 63.0),
                  _advantageWidget(advantageList[1]),
                ],
              ),
              const SizedBox(height: 54.0),
              Row(
                children: [
                  _advantageWidget(advantageList[2]),
                  const SizedBox(width: 63.0),
                  _advantageWidget(advantageList[3]),
                ],
              ),
              const SizedBox(height: 54.0),
              _advantageWidget(advantageList[3]),
            ],
          ),
        ),
      ],
    );
  }
}
