class Pessoa {
  String _nome;
  int _idade;
  String _cpf;

  Pessoa(this._nome, this._idade, this._cpf);

  String get nome => _nome;
  int get idade => _idade;
  String get cpf => _cpf;

  set nome(String nome) {
    _nome = nome;
  }

  set idade(int idade) {
    _idade = idade;
  }

  set cpf(String cpf) {
    _cpf = cpf;
  }

  void imprimindoValores() {
    print('Nome: $_nome');
    print('Idade: $_idade');
    print('CPF: $_cpf');
  }
}

void main() {
  Pessoa pessoa = Pessoa('Hebert', 20, '123.456.789-0');
  pessoa.imprimindoValores();

  //modificando
  pessoa.nome = 'Gabrielle';
  pessoa.idade = 16;
  pessoa.cpf = '987.654.321-00';
}
