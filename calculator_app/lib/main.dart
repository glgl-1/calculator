import 'package:calculator_app/view/add.dart';
import 'package:calculator_app/view/dev.dart';
import 'package:calculator_app/view/home.dart';
import 'package:calculator_app/view/mul.dart';
import 'package:calculator_app/view/sub_.dart';
import 'package:flutter/material.dart';

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
        '1st': (context) => const Addcalc(),
        '2st': (context) => const Subcalc(),
        '3st': (context) => const Mulcalc(),
        '4st': (context) => const Devcalc(),
      },
      initialRoute: '/',
    );
  }
}