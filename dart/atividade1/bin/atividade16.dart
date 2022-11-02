import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List listaNumeros = [];

    for (int j = 0; j < 15; j++){
      print("entrar com um numero");
      int num = int.parse(stdin.readLineSync()!);

      listaNumeros.add(sqrt(num)); //adicionando a array e dividindo
    }

    for (int j = 0; j < 15; j++){
      print(listaNumeros[j]);
    }
}