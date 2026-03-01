import 'package:projeto1/projeto1.dart' as projeto1;

void main(List<String> arguments) {
  print(projeto1.calcularIdade(2004));

  print('Hello world: ${projeto1.calculate()}!');

    String nome = "henry";

    int idade = 20;
    if (idade >= 18) {
      print("$nome você é maior de idade!");
    } else {
      print("Você é menor de idade!");
    }

  int temperatura = 30;

  if (temperatura < 15) {
    print("Está frio!");
  } else if (temperatura >= 15 && temperatura < 25) {
    print("Está agradável!");
  } else {
    print("Está quente!");
  }
}
