import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("informe lado A, lado B e lado C");
  
  double ladoA = double.parse(stdin.readLineSync()!);

  double ladoB = double.parse(stdin.readLineSync()!);

  double ladoC = double.parse(stdin.readLineSync()!);

  if (ladoA == ladoB || ladoB == ladoC){
    print("Equilatero");
  }else if (ladoA != ladoB || ladoB != ladoC){
    print("Escaleno");
  }else if (ladoA == ladoB && ladoB != ladoC){
    print("Isóceles");
  }
}