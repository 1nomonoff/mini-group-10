import 'package:flutter/material.dart';
import 'package:practice_app/src/features/main_menu/feature/about/presentation/screens/about_screen.dart';
import 'package:practice_app/src/features/main_menu/feature/payment/presentation/screens/payment_screen.dart';
import 'package:practice_app/src/features/main_menu/feature/return/presentation/screens/return_screen.dart';
import '../../features/main_menu/feature/delivery/presentation/screens/delivery_screen.dart';
import '../../features/main_menu/feature/discount/presentation/screens/discount_screen.dart';
import '../../features/main_menu/feature/reviews/presentation/screens/reviews_screen.dart';
import '../../features/main_menu/presentation/screens/test_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case '/test':
        return customRouter( TestScreen());
      case '/discount':
        return customRouter(DiscountScreen());
      case '/about':
        return customRouter(AboutScreen());
      case '/payment':
        return customRouter(PaymentScreen());
      case '/return':
        return customRouter(ReturnScreen());
      case '/delivery':
        return customRouter(DeliveryScreen());
      case '/reviews':
        return customRouter(ReviewsScreen());

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