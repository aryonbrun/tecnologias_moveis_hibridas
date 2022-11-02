import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("informe a sua idade em anos,meses e dias");
  
  int idade = int.parse(stdin.readLineSync()!);
  int idadeMeses = int.parse(stdin.readLineSync()!);
  int idadeDias = int.parse(stdin.readLineSync()!);

  int idadeTotalDias = idade * 365 + idadeMeses * 30 + idadeDias;
 
  print("a idade total em dias é $idadeTotalDias");
}