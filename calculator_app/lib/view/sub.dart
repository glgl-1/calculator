import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  const Sub({super.key});

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  late TextEditingController numberController; //쌓이는 숫자
  late TextEditingController inputController; //지금까지 계산된 결과
  late List<int> numResult;

  @override
  void initState() {
    super.initState();
    numberController=TextEditingController();
    inputController=TextEditingController();
    numResult=[];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Subtraction Calculator'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: inputController,
              readOnly: true,
            ),
            TextField(
              controller: numberController,
              readOnly: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => viewNumber1(),
                child: const Text('1')),
                ElevatedButton(onPressed: () => viewNumber2(),
                child: const Text('2')),
                ElevatedButton(onPressed: () => viewNumber3(),
                child: const Text('3')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => viewNumber4(),
                child: const Text('4')),
                ElevatedButton(onPressed: () => viewNumber5(),
                child: const Text('5')),
                ElevatedButton(onPressed: () => viewNumber6(),
                child: const Text('6')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => viewNumber7(),
                child: const Text('7')),
                ElevatedButton(onPressed: () => viewNumber8(),
                child: const Text('8')),
                ElevatedButton(onPressed: () => viewNumber9(),
                child: const Text('9')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => subAction(),
                child: const Text('-')),
                ElevatedButton(onPressed: () => viewNumber0(),
                child: const Text('0')),
                ElevatedButton(onPressed: () => equalAction(),
                child: const Text('=')),
              ],
            ),
            ElevatedButton(onPressed: () => reSet(),
            child: const Text('C'))
          ],
        ),
      ),
    );
  }
  //Function
  viewNumber1(){
    numberController.text+='1';
  }
  viewNumber2(){
    numberController.text+='2';
  }
  viewNumber3(){
    numberController.text+='3';
  }
  viewNumber4(){
    numberController.text+='4';
  }
  viewNumber5(){
    numberController.text+='5';
  }
  viewNumber6(){
    numberController.text+='6';
  }
  viewNumber7(){
    numberController.text+='7';
  }
  viewNumber8(){
    numberController.text+='8';
  }
  viewNumber9(){
    numberController.text+='9';
  }
  viewNumber0(){
    numberController.text+='0';
  }

  //'-'를 눌렀을 때
  subAction(){
    if(numberController.text.isNotEmpty){
      numResult.add(int.parse(numberController.text));
      inputController.text=numberController.text+='-';
      numberController.text='';
    }
  }

  //'='를 눌렀을 때
  equalAction(){
    if(numberController.text.isNotEmpty){
      numResult.add(int.parse(numberController.text));
    }else{
      numberController.text='';
    }
    int result=numResult[0].toInt();
    for(int i=1; i<numResult.length; i++){
      result-=numResult[i].toInt();
    }
    // numResult.add(int.parse(numberController.text));
    numberController.text=result.toString();
    numResult=[];
    inputController.text='';
  }
    //초기화
    reSet() {
    numberController.text = '';
    inputController.text = '';
    numResult = [];
  }
}