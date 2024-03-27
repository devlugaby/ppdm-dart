void main() {
  List<Animal> animais = [
    Cachorro(nome: 'Max'),
    Gato(nome: 'Nick'),
    Urso(nome: 'Poo'),
    Leao(nome: 'Nala'),
    Macaco(nome: 'Mia'),
    Peixe(nome: 'Dori')
  ];

  for (var animal in animais) {
    print('${animal.nome}: ${animal.emitirSom()}');
  }
}

abstract class Animal {
  String nome;

  Animal({required this.nome});

  String emitirSom();
}

class Cachorro extends Animal {
  Cachorro({required String nome}) : super(nome: nome);

  @override
  String emitirSom() {
    return 'Au au!';
  }
}

class Gato extends Animal {
  Gato({required String nome}) : super(nome: nome);

  @override
  String emitirSom() {
    return 'Miau!';
  }
}

class Urso extends Animal {
  Urso({required String nome}) : super(nome: nome);

  @override
  String emitirSom() {
    return 'Grrr!';
  }
}

class Leao extends Animal {
  Leao({required String nome}) : super(nome: nome);

  @override
  String emitirSom() {
    return 'Rugido!';
  }
}

class Macaco extends Animal {
  Macaco({required String nome}) : super(nome: nome);

  @override
  String emitirSom() {
    return 'Oooh oooh aah aah!';
  }
}

class Peixe extends Animal {
  Peixe({required String nome}) : super(nome: nome);

  @override
  String emitirSom() {
    return 'Glub glub!';
  }
}
