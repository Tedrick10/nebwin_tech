// Dart: Existing Libraries
// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:io';

// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// MarkYourMarkWidget: StatelessWidget Class
class MarkYourMarkWidget extends StatelessWidget {
  // Constructor
  const MarkYourMarkWidget({super.key});

  // Final: Class Properties
  final String section = "Mark Your Mark";

  // Widgets
  Widget _socialMediaWidget(IconData iconData, String link) {
    return GestureDetector(
      onTap: () => html.window.open(link, ''),
      child: Container(
        width: 43.0,
        height: 43.0,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: ColorsConstant.whiteColor,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: SizesConstant.width,
      height: SizesConstant.height,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(45.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/page_10/webpage_light_background_2.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(children: [
                Image.asset(
                  "assets/images/page_10/nebwin_white_shape.png",
                  width: 170.0,
                  height: 170.0,
                  fit: BoxFit.cover,
                ),
                const Text(
                  "NEBWIN TECH",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: ColorsConstant.whiteColor,
                    decoration: TextDecoration.none,
                  ),
                )
              ]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 45.0),
                      Text(
                        "Make your mark",
                        style: TextStyle(
                          color: ColorsConstant.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 64.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BodyTextWidget(
                            text: "nebwintech@gmail.com",
                            color: ColorsConstant.whiteColor,
                          ),
                          BodyTextWidget(
                            text: "09 771 793 957",
                            color: ColorsConstant.whiteColor,
                          ),
                          const SizedBox(height: 30.0),
                          BodyTextWidget(
                            text:
                                "18 street , bet 81st & 82nd Street ,\nAungmyaetharsan Tsp ; Mandalay",
                            color: ColorsConstant.whiteColor,
                          ),
                        ],
                      ),
                      const SizedBox(width: 45.0),
                    ],
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => html.window.open(
                    "mailto:nebwinstech@gmail.com",
                    '',
                  ),
                  child: Container(
                    width: 279.0,
                    height: 73.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsConstant.whiteColor,
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: const Text(
                      "Work with us",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: ColorsConstant.whiteColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    _socialMediaWidget(
                      FontAwesomeIcons.facebookF,
                      "https://www.facebook.com/officialnebwins?mibextid=LQQJ4d",
                    ),
                    const SizedBox(width: 25.0),
                    _socialMediaWidget(
                      FontAwesomeIcons.twitter,
                      "https://www.facebook.com/officialnebwins?mibextid=LQQJ4d",
                    ),
                    const SizedBox(width: 25.0),
                    _socialMediaWidget(
                      FontAwesomeIcons.instagram,
                      "https://www.facebook.com/officialnebwins?mibextid=LQQJ4d",
                    ),
                    const SizedBox(width: 25.0),
                    _socialMediaWidget(
                      FontAwesomeIcons.viber,
                      "https://invite.viber.com/?g2=AQAQs%2B5rEXqLtk6q%2F51tSjvFD0guO49Wzo05n8YZV%2FwIcfpp2IKCJaQBG%2B%2FAUals",
                    ),
                    const SizedBox(width: 25.0),
                    _socialMediaWidget(
                      FontAwesomeIcons.linkedinIn,
                      "https://www.linkedin.com/company/nebwin-tech/",
                    ),
                    const SizedBox(width: 25.0),
                    // const SizedBox(width: 140.0),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
