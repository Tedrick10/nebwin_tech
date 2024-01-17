// Flags
// ignore_for_file: avoid_web_libraries_in_flutter

// Dart: Existing Libraries
import 'dart:html' as html;

// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// FooterWidget: StatelessWidget Class
class FooterWidget extends StatelessWidget {
  // Parameters: Class Properties
  final Color backgroundColor;
  final Color textColor;

  // Constructor
  FooterWidget({
    required this.backgroundColor,
    required this.textColor,
    super.key,
  });

  // Final: Class Properties
  final TextEditingController _newsletterController = TextEditingController();

  // Functions
  void _sendEmailForNewsletter() {
    print("Sending email for newsletter...");
  }

  // Widgets
  Widget _titleTextWidget(
    String text,
    bool isBold,
    double width,
  ) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: (width < 300) ? 16 : 20,
        fontWeight: (isBold) ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  Widget _newsletterWidget(double width) {
    return Container(
      width: (width < 300) ? 200.0 : 250.0,
      height: 50.0,
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        border: Border.all(color: textColor),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 10.0),
          Container(
            width: (width < 300) ? 100 : 150.0,
            height: 50.0,
            alignment: Alignment.center,
            child: TextField(
              controller: _newsletterController,
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
                fontSize: (width < 300) ? 12.0 : 16.0,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  color: textColor,
                  fontSize: (width < 300) ? 12.0 : 16.0,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: _sendEmailForNewsletter,
            child: Container(
              width: 45.0,
              height: 45.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: textColor,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Icon(
                Icons.arrow_forward,
                color: backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialMediaWidget(
    String title,
    IconData icon,
    String data,
    String link,
    double width,
  ) {
    return GestureDetector(
      onTap: () => html.window.open(link, ''),
      child: Row(
        children: [
          FaIcon(
            icon,
            color: Colors.white,
            size: (width < 300) ? 15.0 : 20.0,
          ),
          SizedBox(width: (width < 300) ? 10 : 25.0),
          Text(
            data,
            style: TextStyle(
              fontSize: (width < 300) ? 12.0 : 18.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _phoneViewWidget(double width) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleTextWidget("Nebwin Tech", true, width),
              const SizedBox(height: 20.0),
              _titleTextWidget("We are doing our best.", false, width),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
        _newsletterWidget(width),
        const SizedBox(height: 50.0),
        _socialMediaWidget(
          "Phone",
          FontAwesomeIcons.phone,
          "+959771793957",
          "tel:+959771793957",
          width,
        ),
        const SizedBox(height: 15.0),
        _socialMediaWidget(
          "Email",
          FontAwesomeIcons.envelope,
          "nebwinstech@gmail.com",
          "mailto:nebwinstech@gmail.com",
          width,
        ),
        const SizedBox(height: 15.0),
        _socialMediaWidget(
          "Facebook",
          FontAwesomeIcons.squareFacebook,
          "Nebwin Tech",
          "https://www.facebook.com/officialnebwins?mibextid=LQQJ4d",
          width,
        ),
        const SizedBox(height: 15.0),
        _socialMediaWidget(
          "LinkedIn",
          FontAwesomeIcons.linkedin,
          "Nebwin Tech",
          "https://www.linkedin.com/company/nebwin-tech/",
          width,
        ),
        const SizedBox(height: 15.0),
        _socialMediaWidget(
          "Viber",
          FontAwesomeIcons.viber,
          "Nebwin Tech",
          "https://invite.viber.com/?g2=AQAQs%2B5rEXqLtk6q%2F51tSjvFD0guO49Wzo05n8YZV%2FwIcfpp2IKCJaQBG%2B%2FAUals",
          width,
        ),
      ],
    );
  }

  Widget _notPhoneViewWidget(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleTextWidget(
                    "Nebwin Tech",
                    true,
                    width,
                  ),
                  const SizedBox(height: 20.0),
                  _titleTextWidget(
                    "We are doing our best.",
                    false,
                    width,
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            _newsletterWidget(width),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _socialMediaWidget(
              "Phone",
              FontAwesomeIcons.phone,
              "+959771793957",
              "tel:+959771793957",
              width,
            ),
            const SizedBox(height: 15.0),
            _socialMediaWidget(
              "Email",
              FontAwesomeIcons.envelope,
              "nebwinstech@gmail.com",
              "mailto:nebwinstech@gmail.com",
              width,
            ),
            const SizedBox(height: 15.0),
            _socialMediaWidget(
              "Facebook",
              FontAwesomeIcons.squareFacebook,
              "Nebwin Tech",
              "https://www.facebook.com/officialnebwins?mibextid=LQQJ4d",
              width,
            ),
            const SizedBox(height: 15.0),
            _socialMediaWidget(
              "LinkedIn",
              FontAwesomeIcons.linkedin,
              "Nebwin Tech",
              "https://www.linkedin.com/company/nebwin-tech/",
              width,
            ),
            const SizedBox(height: 15.0),
            _socialMediaWidget(
              "Viber",
              FontAwesomeIcons.viber,
              "Nebwin Tech",
              "https://invite.viber.com/?g2=AQAQs%2B5rEXqLtk6q%2F51tSjvFD0guO49Wzo05n8YZV%2FwIcfpp2IKCJaQBG%2B%2FAUals",
              width,
            ),
          ],
        ),
      ],
    );
  }

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Final: Method Properties
    final double width = MediaQuery.of(context).size.width;

    // Returning Widgets
    return Container(
      width: double.infinity,
      height: (width < 600) ? 460 : 280,
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 50.0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: const Border(
          top: BorderSide(color: Colors.white),
        ),
      ),
      child:
          (width < 600) ? _phoneViewWidget(width) : _notPhoneViewWidget(width),
    );
  }
}
