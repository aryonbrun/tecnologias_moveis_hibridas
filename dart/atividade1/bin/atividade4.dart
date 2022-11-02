import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print ("informe a base e altura para apresentar a area de um triangulo: ");

  double base = double.parse(stdin.readLineSync()!);
  double altura = double.parse(stdin.readLineSync()!);

  double triangulo = (altura * base) / 2;
  print("a area do triangulo é $triangulo: ");

  
}