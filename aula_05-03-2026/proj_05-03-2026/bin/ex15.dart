import 'dart:io';

void main() {
  // 1. Leitura dos dados
  print("Digite seu peso (kg):");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite sua altura (m):");
  double altura = double.parse(stdin.readLineSync()!);

  // 2. Cálculo do IMC
  double imc = peso / (altura * altura);
  print("Seu IMC é: ${imc.toStringAsFixed(2)}");

  // 3. Condições e Impressão da Tabela
  if (imc < 18.5) {
    print("Condição: Abaixo do peso");
  } else if (imc >= 18.6 && imc <= 24.9) {
    print("Condição: Peso ideal (parabéns)");
  } else if (imc >= 25.0 && imc <= 29.9) {
    print("Condição: Levemente acima do peso");
  } else if (imc >= 30.0 && imc <= 34.9) {
    print("Condição: Obesidade grau I");
  } else if (imc >= 35.0 && imc <= 39.9) {
    print("Condição: Obesidade grau II (severa)");
  } else {
    print("Condição: Obesidade grau III (mórbida)");
  }
}
