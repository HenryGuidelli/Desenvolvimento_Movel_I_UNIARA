import 'dart:io';

double salarioMinimo = 1.412;

void main(List<String> args) {
  double salario = double.parse(stdin.readLineSync().toString());

  double qtdSalarios = salario / salarioMinimo;

  print("Recebe aproximadamente $qtdSalarios salarios mínimos");
}
