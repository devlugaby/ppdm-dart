import 'ex4_5_6.dart';

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, 'gato', idade);

  @override
  void fazerBarulho() {
    print("Miau!");
  }
}
