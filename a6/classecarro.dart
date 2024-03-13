class Carro {
  String marca;
  String modelo;
  int ano;
  String cor;
  bool ligado = false;
  int velocidade = 0;
  
  Carro(this.marca, this.modelo, this.ano, this.cor);

  void ligar() {
    if (!ligado) {
      ligado = true;
      print("O carro está ligado.");
    } else {
      print("O carro já está ligado.");
    }
  }
  
  void desligar() {
    if (ligado) {
      ligado = false;
      velocidade = 0;
      print("O carro está desligado.");
    } else {
      print("O carro já está desligado.");
    }
  }
  
  void acelerar(int incremento) {
    if (!ligado) {
      print("Não é possível acelerar. O carro está desligado.");
      return;
    }
    velocidade += incremento;
    print("O carro acelerou para $velocidade km/h.");
  }
  
  void frear(int decremento) {
    if (!ligado) {
      print("Não é possível frear. O carro está desligado.");
      return;
    }
    if (velocidade - decremento >= 0) {
      velocidade -= decremento;
      print("O carro freou para $velocidade km/h.");
    } else {
      velocidade = 0;
      print("O carro parou.");
    }
  }
}

void main() {
  Carro meuCarro = Carro("Toyota", "Corolla", 2022, "Prata");
  print("Meu carro é um ${meuCarro.marca} ${meuCarro.modelo} ${meuCarro.ano} na cor ${meuCarro.cor}.");
  
  meuCarro.ligar();
  meuCarro.acelerar(50);
  meuCarro.frear(20);
  meuCarro.desligar();
}