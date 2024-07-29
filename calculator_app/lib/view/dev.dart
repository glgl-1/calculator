import 'package:flutter/material.dart';

class Devcalc extends StatefulWidget {
  const Devcalc({super.key});

  @override
  State<Devcalc> createState() => _DevcalcState();
}

class _DevcalcState extends State<Devcalc> {
  late TextEditingController numberController; // 숫자로 화면에 보여짐
  late TextEditingController inPutContrrler; // 저장된 숫자를 보여줌
  late List<double> numberReslt; // 컨트롤러에서 넘어온 숫자를 저장
  late String disPlay;

  @override
  void initState() {
    super.initState();
    numberController = TextEditingController();
    inPutContrrler = TextEditingController();
    numberReslt = [];
    disPlay = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dev'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: inPutContrrler,
              readOnly: true,
            ),
            TextField(
              controller: numberController,
              readOnly: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    viewNumber1();
                  },
                  child: const Text('1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewNumber2();
                  },
                  child: const Text('2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewNumber3();
                  },
                  child: const Text('3'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    viewNumber4();
                  },
                  child: const Text('4'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewNumber5();
                  },
                  child: const Text('5'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewNumber6();
                  },
                  child: const Text('6'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    viewNumber7();
                  },
                  child: const Text('7'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewNumber8();
                  },
                  child: const Text('8'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewNumber9();
                  },
                  child: const Text('9'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    addeNumberlist();
                  },
                  child: const Text('/'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewNumber0();
                    
                  },
                  child: const Text('0'),
                ),
                ElevatedButton(
                  onPressed: () {
                    devNumber();
                  },
                  child: const Text('='),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                reSet();
              },
              child: const Text('C'),
            ),
          ],
        ),
      ),
    );
  }

  // --- Functions ---

  viewNumber1() {
    numberController.text += '1';
  }

  viewNumber2() {
    numberController.text += '2';
  }

  viewNumber3() {
    numberController.text += '3';
  }

  viewNumber4() {
    numberController.text += '4';
  }

  viewNumber5() {
    numberController.text += '5';
  }

  viewNumber6() {
    numberController.text += '6';
  }

  viewNumber7() {
    numberController.text += '7';
  }

  viewNumber8() {
    numberController.text += '8';
  }

  viewNumber9() {
    numberController.text += '9';
  }

  viewNumber0() {
    numberController.text += '0';
  }

  // addNumber() {
  //   // + 표시를 누르면 numReslt에 int로 변경되어 저장
  //   if (numberController.text.isNotEmpty) {
  //     numberReslt.add(int.parse(numberController.text));
  //     numberController.text = '';
  //   }
  // }

  addeNumberlist() {
    // 나누기를 눌렀을 때 리스트에 저장
    if (numberController.text.isNotEmpty) {
      numberReslt..add(double.parse(numberController.text));
      inPutContrrler.text = numberController.text += '/'; 
      numberController.text = '';
    }
  }

  devNumber() {
    // = 누르면 마지막에 입력한 값까지 numReslt에 있는 모든 정수를 나눔
    if (numberController.text.isNotEmpty) {
      numberReslt.add(double.parse(numberController.text));
    }else{
      numberController.text = '';
    }
    double result = numberReslt[0].toDouble();
    for (int i = 1; i < numberReslt.length; i++) {
      result /= numberReslt[i].toDouble();
    }
    numberReslt..add(double.parse(numberController.text));
    numberController.text = result.toString();
    numberReslt = [];
    inPutContrrler.text = '';
    print(numberReslt);
  }


  // disPlayNumber(){  // inputController에 누적되는 글자 표기
  //   inPutContrrler.text += disPlay.toString();
  //   inPutContrrler.text += '/';
  // }

  reSet() {
    // 초기화
    numberController.text = '';
    inPutContrrler.text = '';
    disPlay = '';
    numberReslt = [];
  }
}//END