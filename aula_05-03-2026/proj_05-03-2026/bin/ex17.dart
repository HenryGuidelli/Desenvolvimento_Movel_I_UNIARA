import 'dart:io';

void main(List<String> args) {
  print("Insira uma nota: ");
  int notaUm = int.parse(stdin.readLineSync().toString());

  print("Insira uma nota: ");
  int notaDois = int.parse(stdin.readLineSync().toString());

  print("Insira uma nota: ");
  int notaTres = int.parse(stdin.readLineSync().toString());

  print("Insira uma nota: ");
  int notaQuatro = int.parse(stdin.readLineSync().toString());

  double media = (notaUm + notaDois + notaTres + notaQuatro) / 4;

  print("A média é $media");

  if (media > 7) {
    print("Aluno aprovado");
  } else {
    print("Aluno reprovado");
  }
}
