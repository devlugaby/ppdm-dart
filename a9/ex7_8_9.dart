import 'ex4_5_6.dart';

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, 'cachorro', idade);

  @override
  void fazerBarulho() {
    print("Au au!");
  }
}
