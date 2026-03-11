import 'dart:io';

void main(List<String> args) {
  print("Insira um numero: ");
  int num = int.parse(stdin.readLineSync().toString());

  print("Anterior: ${num - 1}");
  print("Posterior: ${num + 1}");
}
