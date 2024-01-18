// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/subtitle_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// OurClientsWidget: StatelessWidget Class
class OurClientsWidget extends StatelessWidget {
  // Constructor
  const OurClientsWidget({super.key});

  // Final: Class Properties
  final String title = "Our Clients";

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: SizesConstant.width,
      height: SizesConstant.height + 200,
      // alignment: Alignment.center,
      color: ColorsConstant.whiteColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 77.0,
        vertical: 38.0,
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
          const SizedBox(height: 60.0),
          Container(
            // width: 1125.0,
            width: double.infinity,
            // height: 434.0,
            height: 640.0,
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 35.0,
              mainAxisSpacing: 40.0,
              children: List.generate(
                8,
                (int imageIndex) => Container(
                  width: 241.0,
                  height: 189.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 17.0,
                  ),
                  color: const Color(0xffd8d8d8),
                  child: Image.asset(
                    (imageIndex == 4)
                        ? "assets/images/page_09/${imageIndex + 1}.png"
                        : "assets/images/page_09/${imageIndex + 1}.jpg",
                    width: 160.0,
                    height: 160.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
