import 'package:exercicios_1/exercicios_1.dart' as exercicios_1;

void main(List<String> arguments) {
  print('A soma dos pares é: ${exercicios_1.somaPares(10)}');

  print('O fatorial de 10 é: ${exercicios_1.fatorial(10)}');

  print('A palavra é palindromo? ${exercicios_1.palidromo("ana")}');

  print('O 32° em Fahrenheit é: ${exercicios_1.coversorCelsus(32)}°');

  print('O IMC é: ${exercicios_1.calcularIMC(1.75, 60.0)}');

  print('A tabuada de 10 é:');
  exercicios_1.tabuada(10);
}
