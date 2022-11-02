import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("informe a sua idade em anos, meses e dias");
  
  double idade = double.parse(stdin.readLineSync()!);
  double idadeMeses = double.parse(stdin.readLineSync()!);
  double idadeDias = double.parse(stdin.readLineSync()!);

  double idadeTotalDias = idade * 365 + idadeMeses * 30 + idadeDias;
  double idadeTotalMeses = idade * 12;
  double idadeTotalAnos = idadeTotalDias / 365;

  print("a idade total em dias é $idadeTotalDias");
  print("a idade total em meses é $idadeTotalMeses");
  print("a idade total em anos é $idadeTotalAnos");
}