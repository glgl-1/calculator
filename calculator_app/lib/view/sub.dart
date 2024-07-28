import 'package:flutter/material.dart';

class Subcalc extends StatefulWidget {
  const Subcalc({super.key});

  @override
  State<Subcalc> createState() => _SubcalcState();
}

class _SubcalcState extends State<Subcalc> {
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late String subResult;

@override
  void initState() {
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    subResult = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(89, 255, 153, 0),
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextButton(onPressed: () => checkAction(),
                  style: TextButton.styleFrom(backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(5))),
                  child: const Text('뺄셈 결과 확인', 
                  style: TextStyle(fontSize: 30),
                  ), 
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: TextField(controller: num1Controller, 
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: '첫번째 숫자를 입력하세요.',
                  fillColor: Color.fromARGB(105, 233, 30, 98),
                  ),
                  ),
                ),
                const Icon(Icons.minimize, size: 70,),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: TextField(controller: num2Controller, 
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: '두번째 숫자를 입력하세요.',
                  fillColor: Color.fromARGB(105, 233, 30, 98),),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text('=', style: TextStyle(
                    fontSize: 70, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                ),
                const Divider(),
                Text(subResult, style: const TextStyle(
                  fontSize: 70, fontWeight: FontWeight.normal, color: Colors.red),
                  ),
              ],
            ),
        ),
      ),
    );
  }
  //function
  errorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요.'),
        duration: Duration(seconds: 1),
        backgroundColor: Colors.red,
      ),
    );
  }

  checkAction(){
    if(num1Controller.text.trim().isEmpty||
        num2Controller.text.trim().isEmpty){
          errorSnackBar();
    }else{
      subResult=Simsubcalc(num1Controller.text.trim(), num2Controller.text.trim()).simsubAction();
      setState(() {});      
    }
    
  }
}
class Simsubcalc{

//Property
late String num1Str;
late String num2Str;

//Constructor
Simsubcalc(String num1, String num2){
  num1Str=num1;
  num2Str=num2;
}

//Method
simsubAction(){
  int str1=int.parse(num1Str);
  int str2=int.parse(num2Str);
  int subCalc=str1-str2;
  return subCalc.toString();
}
}