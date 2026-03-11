import 'dart:io';

List<int> numero = [];

void main(List<String> args) {
  print("Insira um numero: ");
  numero.add(int.parse(stdin.readLineSync().toString()));

  print("Insira um numero: ");
  numero.add(int.parse(stdin.readLineSync().toString()));

  print("Insira um numero: ");
  numero.add(int.parse(stdin.readLineSync().toString()));

  numero.sort();

  print("Em ordem: $numero");
}
