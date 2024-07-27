import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("계산기"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/1st');
              },
              child: const Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/2st');
              },
              child: const Text('-'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/3st');
              },
              child: const Text('*'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/4st');
              },
              child: const Text('/'),
            ),
          ],
        ),
      ),
    );
  }
}
