import 'dart:io';

void main(List<String> args) {
  print("Insira um numero: ");
  int num = int.parse(stdin.readLineSync().toString());

  if (num > 0) {
    print("O numero é positivo!");
  } else {
    print("O numero é negativo!");
  }

  if (num % 2 == 0) {
    print("O numero é par!");
  } else {
    print("O numero é impar!");
  }
}
