import 'package:calculator_app/addclass.dart';
import 'package:flutter/material.dart';

class Addcalc extends StatefulWidget {
  const Addcalc({super.key});

  @override
  State<Addcalc> createState() => _AddcalcState();
}

class _AddcalcState extends State<Addcalc> {

late TextEditingController calcDisplay;
  late String numpad1;
  late String numpad2;
  late String numpad3;
  late String numpad4;
  late String numpad5;
  late String numpad6;
  late String numpad7;
  late String numpad8;
  late String numpad9;
  late String numpad0;
  late String numpadPoint;
  late String numpadPlus;
  late String numpadEqual;
  late TextEditingController clacSum;
  late TextEditingController clacSumResult;

  @override
  void initState() {
    super.initState();
    calcDisplay = TextEditingController();
    numpad1 = "1";
    numpad2 = "2";
    numpad3 = "3";
    numpad4 = "4";
    numpad5 = "5";
    numpad6 = "6";
    numpad7 = "7";
    numpad8 = "8";
    numpad9 = "9";
    numpad1 = "1";
    numpad0 = "0";
    numpadPoint = ".";
    clacSum = TextEditingController();
    clacSumResult = TextEditingController();
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('SUM'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
              width: 200,
                child: TextField(
                  controller: calcDisplay,
                  readOnly: true,
                  decoration: const InputDecoration(
                    labelText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPress7();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('7')
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPress8();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('8')
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPress9();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('9')
                ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPress4();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('4')
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPress5();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('5')
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPress6();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('6')
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPress1();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('1')
                ),           
                ElevatedButton(
                  onPressed: () {
                    buttonPress2();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('2')
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPress3();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('3')
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressPlus();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('+')
                ),           
                ElevatedButton(
                  onPressed: () {
                    buttonPress0();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('0')
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressPoint();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('.')
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonClearAll();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('Delete')
                ),           
                ElevatedButton(
                  onPressed: () {
                    buttonPressResult();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('=')
                ),           
                ElevatedButton(
                  onPressed: () {
                    buttonBackSpace();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('<-')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //// Functionm
  buttonPress1(){
    calcDisplay.text = calcDisplay.text + numpad1;
  }
  buttonPress2(){
    calcDisplay.text = calcDisplay.text + numpad2;
  }
  buttonPress3(){
    calcDisplay.text = calcDisplay.text + numpad3;
  }
  buttonPress4(){
    calcDisplay.text = calcDisplay.text + numpad4;
  }
  buttonPress5(){
    calcDisplay.text = calcDisplay.text + numpad5;
  }
  buttonPress6(){
    calcDisplay.text = calcDisplay.text + numpad6;
  }
  buttonPress7(){
    calcDisplay.text = calcDisplay.text + numpad7;
  }
  buttonPress8(){
    calcDisplay.text = calcDisplay.text + numpad8;
  }
  buttonPress9(){
    calcDisplay.text = calcDisplay.text + numpad9;
  }
  buttonPress0(){
    calcDisplay.text = calcDisplay.text + numpad0;
  }
  buttonPressPoint(){
    if (calcDisplay.text.contains(".") ==  true) {
      calcDisplay.text = calcDisplay.text;
    }else{
      calcDisplay.text = calcDisplay.text + numpadPoint;
    }
  }
  buttonPressPlus(){
    calcDisplay = clacSum;
    calcDisplay.text = '';
}

  buttonPressResult(){
    Sumclac sumResult = Sumclac(calcDisplay.text.trim(), clacSum.text.trim());
    calcDisplay.text = sumResult.addAction();
    clacSum.text = '0';


    setState(() {});
  }

  buttonClearAll(){
    calcDisplay.text = '';
  }
  buttonBackSpace(){
    if (calcDisplay.text.length > 1) {
        calcDisplay.text = calcDisplay.text.substring(0, calcDisplay.text.length - 1);
      } else {
        calcDisplay.text = '';
  }

}
}