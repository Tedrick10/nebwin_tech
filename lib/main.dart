// Commands
// flutter run -d web-server --web-port 8080 --web-hostname 0.0.0.0

// Flutter: Existing Libraries
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// Utils
import 'utils/routes.dart';

// Main: Index Function
void main() {
  // To remove hashtag "#"
  setUrlStrategy(PathUrlStrategy());

  // Running Application
  runApp(const MyApp());
}

// MyApp: StatelessWidget Class
class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({super.key});

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return MaterialApp(
      title: "Nebwin Technology",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
    );
  }
}
