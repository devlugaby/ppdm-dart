import 'dart:ffi';

import "classes.dart";

class Carro {
  String placa;
  int numChassi;

  Carro(this.placa, this.numChassi);

  Carro.comPlaca(this.placa) : numChassi = 0;

  Carro.comNumChassi(this.numChassi) : placa = '';
}

class Animal {
  Float tamanho;
  String cor;

  Animal(this.tamanho, this.cor);

  Animal.comTamanho(this.tamanho) : cor = '';

  Animal.comCor(this.cor) : tamanho = 0.0;
}

class Consulta {
  DateTime data;
  String nomePcnt;
  String nomeDents;

  Consulta(this.data, this.nomePcnt, this.nomeDents);

  Consulta.comData(this.data) : nomePcnt = '', nomeDents = '';

  Consulta.comNomes(this.nomePcnt, this.nomeDents) : data = DateTime.now();
}
