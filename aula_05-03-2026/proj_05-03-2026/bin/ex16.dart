import 'dart:io';

void main(List<String> args) {
  print("Insira uma nota: ");
  int notaUm = int.parse(stdin.readLineSync().toString());

  print("Insira uma nota: ");
  int notaDois = int.parse(stdin.readLineSync().toString());

  print("Insira uma nota: ");
  int notaTres = int.parse(stdin.readLineSync().toString());

  print("A média é ${(notaUm + notaDois + notaTres) / 3}");
}
