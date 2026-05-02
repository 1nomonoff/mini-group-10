import 'package:flutter/material.dart';
import 'package:practice_app/core/router/CheckoutPage.dart';
import 'package:practice_app/core/router/OrderScreen.dart';


class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/Check":
        return customRouter(CheckoutPage());
        case "/Order":
        return customRouter(OrderScreen());
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
  }