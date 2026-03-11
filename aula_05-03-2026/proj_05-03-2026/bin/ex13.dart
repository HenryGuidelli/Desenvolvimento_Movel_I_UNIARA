bool verdadeiro = false;
bool falso = true;

void main(List<String> args) {
  if (verdadeiro == true && falso == true ||
      verdadeiro == false && falso == false) {
    print("Ou ambos são verdadeiro ou ambos são falso");
  } else {
    print("Ambos têm valores distintos");
  }
}
