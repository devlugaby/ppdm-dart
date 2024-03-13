class Aviao {
  String marca;
  String modelo;
  int ano;
  String cor;
  bool decolando = true;
  
  Aviao(this.marca, this.modelo, this.ano, this.cor);
  
  void decolar() {
    if (decolando) {
      print("O avião está decolando.");
      decolando = false;
    } else {
      print("O avião já está no ar.");
    }
  }
  
  void voar() {
    if (decolando) {
      print("O avião ainda está decolando. Não é possível voar.");
    } else {
      print("O avião está voando.");
    }
  }
  
  void pousar() {
    if (decolando) {
      print("O avião está decolando. Não é possível pousar.");
    } else {
      print("O avião está pousando.");
      decolando = true;
    }
  }
}

void main() {
  Aviao meuAviao = Aviao("Boeing", "737", 2018, "Branco");
  print("Meu avião é um ${meuAviao.marca} ${meuAviao.modelo} ${meuAviao.ano} na cor ${meuAviao.cor}.");
  
  meuAviao.decolar();
  meuAviao.voar();
  meuAviao.pousar();
}