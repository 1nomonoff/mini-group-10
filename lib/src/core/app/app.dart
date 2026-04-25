import 'package:flutter/material.dart';

import '../router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: '/reviews',
    );
  }
}
