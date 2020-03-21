import 'dart:math';

class CalculateBrain{

  final int height;
  final int weight;
  double _bmi;

  CalculateBrain({ this.height, this.weight});

  String calculateBMI(){
    _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getCategory(){
    if(_bmi<18.5){
      return "Underweight";
    }else if(_bmi>18.5 && _bmi<24.9){
      return "Normal weight";
    }else if(_bmi>25.0 && _bmi<29.9){
      return "Overweight";
    }else{
      return "Obesity";
    }
  }
  String getInterpretation(){
     if(_bmi<18.5){
      return "You have a lower than normal body weight. You can eat a bit more.";
    }else if(_bmi>18.5 && _bmi<24.9){
      return "You have a normal body weight, good job!";
    }else if(_bmi>25.0 && _bmi<29.9){
      return "You have a higher than normal body weight. Try to make exercise.";
    }else{
      return "You are in a risky group. You must look a doctor!";
    }
  }


}