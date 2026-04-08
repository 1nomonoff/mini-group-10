import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/src/features/izbraniy/screens/izbraniy_screen.dart';
import 'package:practice_app/src/features/korzina/logic/korzinka_cubir.dart';
import 'package:practice_app/src/features/korzina/screens/korzina_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const KorzinaScreen(),
      ),
    );
  }
}
