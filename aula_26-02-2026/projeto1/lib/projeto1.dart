int calculate() {
  return 6 * 7;
}

int calcularIdade(int anoNascimento) {
  int anoAtual = DateTime.now().year;
  return anoAtual - anoNascimento;
}
