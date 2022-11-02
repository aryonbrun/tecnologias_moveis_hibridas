import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
// import 'dart:math'
void main(List<String> arguments) {
  
    print("Informe o Primeiro NUMERO: ");
    double num1 = double.parse(stdin.readLineSync()!);

    print("informe o Segundo NUMERO: ");
    double num2 = double.parse(stdin.readLineSync()!);

    print(num1 + num2);
    print(num1 - num2);
    print(num1 * num2);
    print(num1 / num2);

}
