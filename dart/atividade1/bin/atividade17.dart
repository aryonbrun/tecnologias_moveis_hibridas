import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {

      print("entrar com um numero");
      int num1 = int.parse(stdin.readLineSync()!);
      int num2 = int.parse(stdin.readLineSync()!);

      print("____________________");
     

      for (int j = num1+1; j < num2; j++){

        print(j);
      }


}