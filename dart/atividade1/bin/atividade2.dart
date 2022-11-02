import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';

void main(List<String> args) {
  print("INFORME UM NUMERO");
  

  int num = int.parse(stdin.readLineSync()!);
  print("_______________________________________");

  int antecessor = num - 1;
  int sucessor = num +1;

  print(antecessor);
  print(num);
  print(sucessor);
  
}