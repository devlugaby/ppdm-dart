class Animal {
  String nome;
  String especie;
  int idade;

  Animal(this.nome, this.especie, this.idade);

  void fazerBarulho() {
    print("O $nome está fazendo barulho!");
  }
}
