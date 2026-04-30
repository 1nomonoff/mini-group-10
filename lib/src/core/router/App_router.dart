import 'package:flutter/material.dart';
import 'package:practice_app/src/features/auth/presentation/screens/Avtorizatsiya_Page.dart';
import 'package:practice_app/src/features/auth/presentation/screens/OtpScreen.dart';
import 'package:practice_app/src/features/auth/presentation/screens/Parolni_tiklash.dart';
import 'package:practice_app/src/features/auth/presentation/screens/Politika_page.dart';
import 'package:practice_app/src/features/auth/presentation/screens/Resgister_Page.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/auth":
        return customRouter(const RegisterScreen());
      case "/avtorizatsiya":
        return customRouter(const AvtorizatsiyaScreen());
      case "/pin_kod":
        return customRouter(const ParolniTiklashScreen());

      case "/otp":
        final email = settings.arguments as String;
        return customRouter(OtpScreen(email: email));

      case "/login":
        return customRouter(const AvtorizatsiyaScreen());

      case "/politika":
        return customRouter(const PolitikaPage());

      default:
        return customRouter(
          const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }

  static MaterialPageRoute customRouter(Widget page) {
    return MaterialPageRoute(builder: (_) => page);
  }
}
