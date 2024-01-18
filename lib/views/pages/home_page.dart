// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../widgets/welcome_widget.dart';
import '../widgets/about_us_widget.dart';
import '../widgets/client_who_trust_us_widget.dart';
import '../widgets/why_choose_nebwin_tech_widget.dart';
import '../widgets/services_we_offer_widget.dart';
import '../widgets/logofolio_widget.dart';
import '../widgets/our_creative_designs_widget.dart';
import '../widgets/our_event_designs_widget.dart';
import '../widgets/our_clients_widget.dart';
import '../widgets/mark_your_mark_widget.dart';

// HomePage: StatelessWidget Class
class HomePage extends StatelessWidget {
  // Static: Class Properties
  static const String routeName = "/";

  // Constructor
  const HomePage({super.key});

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const WelcomeWidget(),
            const AboutUsWidget(),
            ClientWhoTrustUsWidget(),
            WhyChooseNebwinTechWidget(),
            const ServicesWeOfferWidget(),
            const LogofolioWidget(),
            const OurCreativeDesignsWidget(),
            const OurEventDesignsWidget(),
            const OurClientsWidget(),
            const MarkYourMarkWidget(),
          ],
        ),
      ),
    );
  }
}
