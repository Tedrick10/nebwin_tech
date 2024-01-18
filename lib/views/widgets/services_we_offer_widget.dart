// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/subtitle_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// ServicesWeOfferWidget: StatelessWidget Class
class ServicesWeOfferWidget extends StatelessWidget {
  // Constructor
  const ServicesWeOfferWidget({super.key});

  // Final: Class Properties
  final String title = "Services We Offer";
  final String subtitle = "We are your Champion !";

  // Widgets
  Widget _serviceWidget(
    int number,
    String title,
    String body,
  ) {
    return Container(
      width: 606.0,
      // height: 185.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      color: ColorsConstant.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 40.0),
          Text(
            "0$number",
            style: const TextStyle(
              fontSize: 40.0,
              color: ColorsConstant.secondaryColor,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 21.0,
                    color: ColorsConstant.secondaryColor,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  body,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: ColorsConstant.secondaryColor,
                    decoration: TextDecoration.none,
                    height: 1.8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Final: Method Properties
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Returning Widgets
    return Stack(
      children: [
        Container(
          width: SizesConstant.width,
          height: SizesConstant.height + 62,
          alignment: Alignment.center,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 77.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 62.0),
              Container(
                width: double.infinity,
                height: 60.0,
                alignment: Alignment.centerLeft,
                child: TitleTextWidget(
                  text: title,
                  color: ColorsConstant.secondaryColor,
                ),
              ),
              const SizedBox(height: 31.0),
              Container(
                width: 385,
                height: 86,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsConstant.secondaryColor,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: SubtitleTextWidget(
                  text: subtitle,
                  color: ColorsConstant.secondaryColor,
                ),
              ),
              const SizedBox(height: 57.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      _serviceWidget(
                        1,
                        "Digital Marketing",
                        "In the competitive digital landscape, visibility\nand engagement are paramount. Our expert digital marketing\nteam uses the latest strategies and tools to enhance your\nonline presence, boost brand recognition, and increase\ncustomer engagement.",
                      ),
                      _serviceWidget(
                        2,
                        "Creative Design",
                        "Creative design is the heart and soul of your brand.\nOur design team is dedicated to turning your\nconcepts\ninto captivating visuals, from logos to user interfaces,\nensuring your brand stands out from the crowd.",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      _serviceWidget(
                        3,
                        "Web Development",
                        "We build stunning, responsive websites that not only\ncaptivate your audience but also function seamlessly.\nOur websites are not just visually appealing; \nthey are high-performance platforms designed to\ndrive\nyour business forward.",
                      ),
                      _serviceWidget(
                        4,
                        "Mobile Development",
                        "In a mobile-centric world, having a user-friendly, \nfeature-rich mobile app is essential. We specialize in\ncrafting engaging mobile apps for both iOS and \nAndroid,\nensuring your business is just a tap away from\nyour customers.",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 30.0,
          right: 350.0,
          child: Container(
            width: 125.0,
            height: 125.0,
            decoration: BoxDecoration(
              // color: ColorsConstant.whiteColor,
              border: Border.all(
                width: 1,
                color: ColorsConstant.primaryColor,
              ),
              borderRadius: BorderRadius.circular(200.0),
            ),
          ),
        ),
        Positioned(
          top: 60.0,
          right: 375.0,
          child: Container(
            width: 125.0,
            height: 125.0,
            decoration: BoxDecoration(
              // color: ColorsConstant.whiteColor,
              border: Border.all(
                width: 1,
                color: ColorsConstant.primaryColor,
              ),
              borderRadius: BorderRadius.circular(200.0),
            ),
          ),
        ),
        Positioned(
          top: 90.0,
          right: 400.0,
          child: Container(
            width: 125.0,
            height: 125.0,
            decoration: BoxDecoration(
              // color: ColorsConstant.whiteColor,
              border: Border.all(
                width: 1,
                color: ColorsConstant.primaryColor,
              ),
              borderRadius: BorderRadius.circular(200.0),
            ),
          ),
        ),
      ],
    );
  }
}
