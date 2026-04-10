import 'package:flutter/material.dart';
import '../../features/main_menu/presentation/screens/test_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case '/test':
        return customRouter( TestScreen());

      default:
        return customRouter(
          const Scaffold(
            body: Center(child: Text("Page not found")),
          ),
        );
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}