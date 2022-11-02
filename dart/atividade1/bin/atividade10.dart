import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("informe seu saldo para credito");

  double saldo = double.parse(stdin.readLineSync()!);

  if (saldo > 400.00){
    print("voce tem direito a ${saldo * 0.30} reais");
  } else if (saldo < 400 || saldo <= 300){
    print("voce tem direito a ${saldo * 0.25} reais");
  } else if (saldo < 300 || saldo <= 200){
    print("voce tem direito a ${saldo * 0.20} reais");
  } else if (saldo <= 200 ){
    print("voce tem direito a ${saldo * 0.10} reais");
  }
}