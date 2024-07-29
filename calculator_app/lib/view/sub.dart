import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  const Sub({super.key});

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  late String strNum1;
  late String strNum2;
  late int num1;
  late int num2;
  late String display;
  late String key;
  late int subResult;

  @override
  void initState() {
    super.initState();
    strNum1 = '';
    strNum2 = '';
    display = '';
    num1 = 0;
    num2 = 0;
    subResult = 0;
    key = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('subtraction calculator'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(display),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => subcalc('1'), child: const Text('1')),
                  TextButton(
                      onPressed: () => subcalc('4'), child: const Text('4')),
                  TextButton(
                      onPressed: () => subcalc('7'), child: const Text('7')),
                  TextButton(
                      onPressed: () => subcalc('-'), child: const Text('-')),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => subcalc('2'), child: const Text('2')),
                  TextButton(
                      onPressed: () => subcalc('5'), child: const Text('5')),
                  TextButton(
                      onPressed: () => subcalc('8'), child: const Text('8')),
                  TextButton(
                      onPressed: () => subcalc('0'), child: const Text('0')),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => subcalc('3'), child: const Text('3')),
                  TextButton(
                      onPressed: () => subcalc('6'), child: const Text('6')),
                  TextButton(
                      onPressed: () => subcalc('9'), child: const Text('9')),
                  TextButton(
                      onPressed: () => subcalc('='), child: const Text('=')),
                ],
              ),
              TextButton(onPressed: () => cancel(), child: const Text('Reset'))
            ],
          ),
        ));
  }

  //function
  cancel() {
    strNum1 = '';
    strNum2 = '';
    display = '';
    num1 = 0;
    num2 = 0;
    subResult = 0;
  }

  clearDisplay() {
    display = '';
    setState(() {});
  }

  subcalc(key) {
    if (key == '-') {
      clearDisplay();
      num1 = int.parse(strNum1);
      strNum1 = '';
      num1 = num1 - num2;
    } else if (key == '=') {
      num2 = int.parse(strNum1);
      subResult = num1 - num2;
      display = subResult.toString();
      return display;
    } else {
      strNum1 = '$strNum1+$key';
      display = strNum1;
      return subcalc(key);
    }
  }
}
