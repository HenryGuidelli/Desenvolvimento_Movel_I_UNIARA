import 'dart:io';

void main(List<String> args) {
  print("Valor A:");
  int a = int.parse(stdin.readLineSync().toString());

  print("Valor B:");
  int b = int.parse(stdin.readLineSync().toString());

  print("Valor C:");
  int c = int.parse(stdin.readLineSync().toString());

  int soma = a + b;

  print("Soma é: $soma");

  if (soma < c) {
    print("A soma, $soma, é menor que C, $c");
  }
}
