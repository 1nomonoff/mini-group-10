
import 'package:flutter/material.dart';
import 'package:practice_app/src/features/screens/Parolni_tiklash.dart';
import 'package:practice_app/src/features/screens/Resgister_Page.dart';
final _formKey = GlobalKey<FormState>();


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
   home: ParolniTiklashPage(), );
  }
}