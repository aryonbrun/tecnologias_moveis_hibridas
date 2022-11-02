import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print ("informe a altura e o raio para calcular o volume da lata: ");

  double altura = double.parse(stdin.readLineSync()!);
  double raio = double.parse(stdin.readLineSync()!);

  double lata = altura * 3.14159 * raio * raio;
  print("o volume da lata é $lata: ");

  
}