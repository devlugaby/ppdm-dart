import 'dart:ffi';

class Carro {
  String placa;
  int numChassi;

  Carro(this.placa, this.numChassi);
}

class Animal {
  Float tamanho;
  String cor;

  Animal(this.tamanho, this.cor);
}

class Consulta {
  DateTime data;
  String nomePcnt;
  String nomeDents;

  Consulta(this.data, this.nomePcnt, this.nomeDents);
}