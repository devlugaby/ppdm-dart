class Pessoa {
  String nome;
  int idade;
  String endereco;
  String profissao;
  String cpf; 
  String rg;  

  Pessoa(this.nome, this.idade, this.endereco, this.profissao, this.cpf, this.rg);

  void imprimirDados() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Endereço: $endereco');
    print('Profissão: $profissao');
    print('CPF: $cpf');
    print('RG: $rg');
  }
}

void main() {
  Pessoa pessoa = Pessoa('João', 30, 'Rua A, 123', 'Engenheiro', '123.456.789-01', '1234567-8');
  pessoa.imprimirDados();
}
