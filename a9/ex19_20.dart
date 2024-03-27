import 'ex15_16_17_18.dart';

class Cliente {
  String nome;
  String cpf;
  ContaBancaria contaBancaria;

  Cliente(this.nome, this.cpf, this.contaBancaria);
}

void main() {
  ContaBancaria minhaConta = ContaBancaria(123456, 1000.0, 'Alice');
  Cliente cliente1 = Cliente('Ana', '123.456.789-0', minhaConta);
  print('Cliente: ${cliente1.nome}');
  print('CPF: ${cliente1.cpf}');
  print('Número da conta: ${cliente1.contaBancaria.numero}');
}
