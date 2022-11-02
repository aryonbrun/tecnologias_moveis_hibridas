import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("INFORME altura");
  print("INFORME peso");

  double altura = double.parse(stdin.readLineSync()!);
  double peso = double.parse(stdin.readLineSync()!);
  double ideal = peso / (altura * altura);

  
  
  print("_______________________________________");

  if (ideal < 18.5 ){
    print("voce esta magro");
  } else if (ideal > 18.5 || ideal <= 24.9) {
    print("voce esta normal");
  } else if (ideal > 25.0 || ideal <= 29.9) {
    print("voce esta no sobrepreso");
  } else if (ideal > 30 || ideal <= 30.9) {
    print("voce esta obeso");
  } else if (ideal > 40) {
    print("BARIATRICA JA");
  }
    
  

  print("o peso ideal é $ideal: ");
  
}