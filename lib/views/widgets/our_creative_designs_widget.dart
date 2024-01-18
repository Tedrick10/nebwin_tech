// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/subtitle_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// OurCreativeDesignsWidget: StatelessWidget Class
class OurCreativeDesignsWidget extends StatelessWidget {
  // Constructor
  const OurCreativeDesignsWidget({super.key});

  // Final: Class Properties
  final String title = "Our Creative Designs";

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: SizesConstant.width,
      height: SizesConstant.height + 2,
      // alignment: Alignment.center,
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
            height: 500.0,
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 5,
              crossAxisSpacing: 35.0,
              mainAxisSpacing: 40.0,
              children: List.generate(
                10,
                (int imageIndex) => Image.asset(
                  "assets/images/page_07/${imageIndex + 1}.jpg",
                  width: 197.0,
                  height: 197.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
