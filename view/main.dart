import 'package:flutter/material.dart';

import 'divcalc.dart';
import 'mulcalc.dart';
import 'subcalc.dart';
import 'addcalc.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Home(),
        '/1st': (context) => const FirstPage(),
        '/2st': (context) => const SecondPage(),
        '/3st': (context) => const ThirdPage(),
        '/4st': (context) => const FourthPage(),
      },
      initialRoute: '/',
    );
  }
}
