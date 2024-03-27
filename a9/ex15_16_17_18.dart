class ContaBancaria {
  int numero;
  double saldo;
  String titular;

  ContaBancaria(this.numero, this.saldo, this.titular);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de $valor realizado com sucesso. Novo saldo: $saldo');
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
      print('Saque de $valor realizado com sucesso. Novo saldo: $saldo');
    } else {
      print('Saldo insuficiente para realizar saque');
    }
  }
}

void main() {
  ContaBancaria minhaConta = ContaBancaria(123456, 1000.0, 'Alice');
  print('Saldo inicial: ${minhaConta.saldo}');
  minhaConta.depositar(500.0);
  minhaConta.sacar(200.0);
  minhaConta.sacar(2000.0); //tentando sacar mais do que tem na conta
}
