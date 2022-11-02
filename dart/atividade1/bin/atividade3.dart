import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("informe a base e altura do perimetro");
  

  double base = double.parse(stdin.readLineSync()!);
  double altura = double.parse(stdin.readLineSync()!);

  print("_______________________________________");

  // double perimetro = 2 * (base + altura);
  // print("o perimetro é $perimetro" );

  print("perimetro = ${2 * (base + altura)}"); //contatenar o metodo
  
  print("_______________________________________");

  print("informe a area");
  
  double base1 = double.parse(stdin.readLineSync()!);
  double altura1 = double.parse(stdin.readLineSync()!); 
  double area =  base1 * altura1;
  print("a area é $area");

  print("_______________________________________");

  print("informe a diagonal: ");
  double base2 = double.parse(stdin.readLineSync()!);
  double altura2 = double.parse(stdin.readLineSync()!); 
  double diaganol = sqrt(base2 * base2) + (altura2 * altura2);
  print("a diagonal e $diaganol");

}