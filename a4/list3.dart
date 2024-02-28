void main() {
  Map<String, double> frutas = {
    'melancia': 5.0,
    'mamão': 3.0,
    'laranja': 2.5,
    'caqui': 1.0,
    'caju': 3.5,
  };

  print('Frutas e seus preços:');
  frutas.forEach((fruta, preco) {
    print('Fruta: $fruta, Preço: R\$$preco');
  });
}