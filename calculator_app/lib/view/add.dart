import 'package:calculator_app/addclass.dart';
import 'package:flutter/material.dart';

class Addcalc extends StatefulWidget {
  const Addcalc({super.key});

  @override
  State<Addcalc> createState() => _AddcalcState();
}

class _AddcalcState extends State<Addcalc> {

  late TextEditingController calcDisplay;
  late List<double> clacSum;
  late TextEditingController clacSumResult;

  @override
  void initState() {
    super.initState();
    calcDisplay = TextEditingController();
    clacSum = [];
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  //// Functionm
  buttonPress1(){
    calcDisplay.text = calcDisplay.text += '1';
  }
  buttonPress2(){
    calcDisplay.text = calcDisplay.text += '2';
  }
  buttonPress3(){
    calcDisplay.text = calcDisplay.text += '3';
  }
  buttonPress4(){
    calcDisplay.text = calcDisplay.text += '4';
  }
  buttonPress5(){
    calcDisplay.text = calcDisplay.text += '5';
  }
  buttonPress6(){
    calcDisplay.text = calcDisplay.text += '6';
  }
  buttonPress7(){
    calcDisplay.text = calcDisplay.text += '7';
  }
  buttonPress8(){
    calcDisplay.text = calcDisplay.text += '8';
  }
  buttonPress9(){
    calcDisplay.text = calcDisplay.text += '9';
  }
  buttonPress0(){
    calcDisplay.text = calcDisplay.text += '0';
  }
  buttonPressPoint(){
    if (calcDisplay.text.contains(".") ==  true) {
      calcDisplay.text = calcDisplay.text;
    }else{
      calcDisplay.text += '.';
    }
  }
  buttonPressPlus(){
    if(calcDisplay.text.trim().isNotEmpty){
      clacSum.add(double.parse(calcDisplay.text.trim()));
      calcDisplay.text = '';
      print(clacSum);
  }
}

  buttonPressResult(){
    if(calcDisplay.text.trim().isNotEmpty && clacSum.length > 0){
        Sumclac sumResult = Sumclac(calcDisplay.text.trim(), clacSum[0]);
        calcDisplay.text = sumResult.addAction();
        eraseResult();
        print(calcDisplay.text);
        print(clacSum);
    }else{
      calcDisplay = calcDisplay;
    }

    setState(() {});
  }

  buttonClearAll(){
    calcDisplay.text = '';
    clacSum.clear();
  }

  eraseResult(){
    if(clacSum.length >= 1) {
      clacSum.removeAt(0);
    }
  }
}
