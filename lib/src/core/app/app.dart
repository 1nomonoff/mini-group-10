import 'package:flutter/material.dart';
import '../router/app_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test Api",
      // theme: ThemeData.dark(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/login",
      navigatorKey: navigatorKey,
    );    
  }
}
