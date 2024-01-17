// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Pages
import '../views/pages/home_page.dart';
import '../views/pages/under_construction_page.dart';

class Routes {
  // Static: Class Properties
  static String initialRoute = HomePage.routeName;
  static Map<String, Widget Function(BuildContext)> routes = {
    HomePage.routeName: (_) => const HomePage(),
    UnderConstructionPage.routeName: (_) => const UnderConstructionPage(),
  };
}
