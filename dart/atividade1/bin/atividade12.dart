import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("informe um numero");

  int num = int.parse(stdin.readLineSync()!);

  if (num == 5 || num == 200){
    print("ERROU");
  }else if (num >= 500 || num <= 1000){
    print("fora do escopo dos anteriores");
  }
}