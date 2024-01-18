// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './common/title_text_widget.dart';
import './common/subtitle_text_widget.dart';
import './common/body_text_widget.dart';

// Constants
import '../../constants/colors_constant.dart';
import '../../constants/sizes_constant.dart';

// LogofolioWidget: StatelessWidget Class
class LogofolioWidget extends StatelessWidget {
  // Constructor
  const LogofolioWidget({super.key});

  // Final: Class Properties
  final String title = "Logofolio";

  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: SizesConstant.width,
              height: (SizesConstant.height + 150) / 2,
              color: const Color(0xfff4f8fb),
            ),
            Container(
              width: SizesConstant.width,
              height: (SizesConstant.height + 150) / 2,
              color: const Color(0xfff1f3f9),
            ),
          ],
        ),
        Container(
          width: SizesConstant.width,
          height: SizesConstant.height + 150,
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
              SizedBox(
                width: 1200.0,
                height: 600.0,
                child: GridView.count(
                  crossAxisCount: 6,
                  children: List.generate(
                    18,
                    (int imageIndex) => Image.asset(
                      "assets/images/page_06/${imageIndex + 1}.png",
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
