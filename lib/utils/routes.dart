// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Pages
import '../views/pages/under_construction_page.dart';

class Routes {
  // Static: Class Properties
  static String initialRoute = UnderConstructionPage.routeName;
  static Map<String, Widget Function(BuildContext)> routes = {
    UnderConstructionPage.routeName: (_) => const UnderConstructionPage(),
  };
}
