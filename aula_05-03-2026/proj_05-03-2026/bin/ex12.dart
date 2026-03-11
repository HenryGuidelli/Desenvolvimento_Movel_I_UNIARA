import 'dart:io';

void main(List<String> args) {
  print("Insira um valor");

  double valor = double.parse(stdin.readLineSync().toString());

  valor = valor * 1.05;

  print("O valor mais 5% é: $valor");
}
