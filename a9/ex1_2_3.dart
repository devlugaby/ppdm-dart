class Pessoa {
  String nome;
  int idade;
  String sexo;

  Pessoa(this.nome, this.idade, this.sexo);

  void imprimir() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("Sexo: $sexo");
  }
}
