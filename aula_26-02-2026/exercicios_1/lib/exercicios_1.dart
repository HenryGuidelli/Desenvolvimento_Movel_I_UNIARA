int somaPares(int n) {
  int soma = 0;

  for (int i = 0; i <= n; i++) {
    if (i % 2 == 0) {
      soma += i;
    }
  }

  return soma;
}

int fatorial(int n) {
  int somaFatorial = n;

  for (; n > 0; n--) {
    somaFatorial *= n;
  }

  return somaFatorial;
}

bool palidromo(String palavra) {
  palavra.toLowerCase();

  var palavraContrario = palavra.split('').reversed.join('');

  if (palavra == palavraContrario) {
    return true;
  } else {
    return false;
  }
}

double coversorCelsus(int temp) {
  return (temp * 1.8) + 32;
}

double calcularIMC(double altura, double peso) {
  double imc = 0.0;

  imc = peso / (altura * altura);

  return imc;
}

void tabuada(int n) {
  print("$n x 1 = ${n * 1}");
  print("$n x 1 = ${n * 2}");
  print("$n x 1 = ${n * 3}");
  print("$n x 1 = ${n * 4}");
  print("$n x 1 = ${n * 5}");
  print("$n x 1 = ${n * 6}");
  print("$n x 1 = ${n * 7}");
  print("$n x 1 = ${n * 8}");
  print("$n x 1 = ${n * 9}");
  print("$n x 1 = ${n * 10}");
}
