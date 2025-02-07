import 'package:flutter/material.dart';

class Mulcalc extends StatefulWidget {
  const Mulcalc({super.key});

  @override
  State<Mulcalc> createState() => _MulcalcState();
}

class _MulcalcState extends State<Mulcalc> {
  late TextEditingController numController;
  late int number1;
  late int number2;
  late int number3;
  late int number4;
  late int number5;
  late int number6;
  late int number7;
  late int number8;
  late int number9;
  late int number0;
  String ope = '';
  String box = '';

  @override
  void initState() {
    super.initState();
    numController = TextEditingController();
    number1 = 1;
    number2 = 2;
    number3 = 3;
    number4 = 4;
    number5 = 5;
    number6 = 6;
    number7 = 7;
    number8 = 8;
    number9 = 9;
    number0 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('곱하기'),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: numController,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                labelText: ' Click the numbers.',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  letterSpacing: 2,
                )),
                readOnly: true,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 100, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => buttonp1('1'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 225, 15, 57),
                      shape: const CircleBorder()),
                  child: const Text('1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                      )),
                ),
                ElevatedButton(
                  onPressed: () => buttonp1('2'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 234, 121, 8),
                      shape: const CircleBorder()),
                  child: const Text('2',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                      )),
                ),
                ElevatedButton(
                  onPressed: () => buttonp1('3'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 232, 232, 9),
                      shape: const CircleBorder()),
                  child: const Text('3',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                      )),
                ),
                TextButton.icon(
                  onPressed: () {
                    numController.text = numController.text
                        .substring(0, numController.text.length - 1);
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Color.fromARGB(255, 99, 202, 97),
                  ),
                  label: const Text(''),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => buttonp1('4'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 101, 138, 234),
                    shape: const CircleBorder()),
                child: const Text('4',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
              ElevatedButton(
                onPressed: () => buttonp1('5'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 185, 119, 233),
                    shape: const CircleBorder()),
                child: const Text('5',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
              ElevatedButton(
                onPressed: () => buttonp1('6'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 230, 10, 178),
                    shape: const CircleBorder()),
                child: const Text('6',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => buttonp1('7'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 223, 147, 170),
                    shape: const CircleBorder()),
                child: const Text('7',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
              ElevatedButton(
                onPressed: () => buttonp1('8'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 241, 58, 153),
                    shape: const CircleBorder()),
                child: const Text('8',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
              ElevatedButton(
                onPressed: () => buttonp1('9'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 246, 175, 215),
                    shape: const CircleBorder()),
                child: const Text('9',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _calculateResult();
                  
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 125, 216, 243),
                    shape: const CircleBorder()),
                child: const Text('=',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                    )),
              ),
              ElevatedButton(
                onPressed: () => buttonp1('0'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 42, 199, 216),
                    shape: const CircleBorder()),
                child: const Text('0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonp1('*');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 125, 216, 243),
                    shape: const CircleBorder()),
                child: const Text('*',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                numController.text = "";
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 125, 216, 243),
                  shape: const CircleBorder()),
              child: const Text('C',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                  )),
            ),
          ),
        ],
      )),
    );
  }

  /* inputCheck() {
    if (numController.text.trim().isEmpty) {
      errorSnackBar();
    } else {
      sum = int.parse(numController.text.trim());

      setState(() {});
    }
  } */

  errorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

  buttonp1(String value) {
    setState(() {});
    numController.text += value;
  }

  _calculateResult() {
    final text = numController.text;
    final parts = text.split('*');

    if(parts.length == 2) {
      try {
        final num1 = int.parse(parts[0]);
        final num2 = int.parse(parts[1]);
        final result = num1 * num2;
        numController.text = result.toString();
      } catch (e) {
        errorSnackBar();
      }
      }

    }
  }


 //End
