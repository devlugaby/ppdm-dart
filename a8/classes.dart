class Animal {
  late String nome;
  late String sexo;
  late String raca;

  void dormir() {
    print("$nome está dormindo.");
  }

  void caminhar() {
    print("$nome está caminhando.");
  }

  void correr() {
    print("$nome está correndo.");
  }

  void emitirSom() {
    print("$nome está emitindo um som.");
  }

  String getNome() {
    return nome;
  }

  void setNome(String nome) {
    this.nome = nome;
  }

  String getSexo() {
    return sexo;
  }

  void setSexo(String sexo) {
    this.sexo = sexo;
  }

  String getRaca() {
    return raca;
  }

  void setRaca(String raca) {
    this.raca = raca;
  }
}
