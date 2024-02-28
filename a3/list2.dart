void main() {
  List<String> frutas = ["banana", "maçã", "laranja", "abacaxi", "kiwi"];
  frutas.sort();

  print("Frutas em ordem alfabética:");
  for (String fruta in frutas) {
    print(fruta);
  }
}