void main() {
  List<String> frutas = ['Maçã', 'Banana', 'Morango', 'Abacaxi', 'Uva'];
  List<String> animais = ['Cachorro', 'Gato', 'Pássaro', 'Elefante', 'Leão'];
  
  List<String> combinacao = frutas + animais;
  
  print('Lista combinada:');
  combinacao.forEach((elemento) => print(elemento));
}
