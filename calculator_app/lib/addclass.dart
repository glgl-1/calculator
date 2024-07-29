class Sumclac {
  
  
  // property
  late String num1;
  late double num2;

  //constructor 
  Sumclac (String num_1, double num_2){
    num1 = num_1 ;
    num2 = num_2 ;
}

  //function
  String addAction(){
    double number1 = double.parse(num1);
    double number2 = num2;
    double addResult = number1 + number2;
    return addResult.toString();
  }
}