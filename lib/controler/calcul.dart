import 'dart:math';
class Calcul{
  Calcul({this.height,this.weight});
  final int height;
  final int weight;
  double bmi;
  String BmiCalc(){
     bmi = weight / pow(height / 100.0, 2);
   return bmi.toStringAsFixed(1);
  }

  String getFinalResult() {
    if (bmi >= 25) {
      return 'Overweight';
    }
    else if (bmi > 18.5) {
      return 'Normal';
    }
    return 'Underweight';
  }


  String getIt() {
    if (bmi >= 25) {
      return 'lezmek tath3aaaf 5ouya/ou5ty etlhe b sahteeeek!';
    }

    if (bmi >= 18.5) {
      return 'ma3alem sahbiii jawek behi ale5er ab9aaa hakaaa bravoooooo :D <3';
    }
    return 'lezmekkkk tekellll ya 5ouyaaaaaa';
  }


}