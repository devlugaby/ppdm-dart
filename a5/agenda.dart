import 'dart:io';

void main() {
  Map<String, String> agenda = {};

  while (true) {
    print('\nEscolha uma opção:');
    print('1. Adicionar contato');
    print('2. Editar contato');
    print('3. Remover contato');
    print('4. Listar todos os contatos');
    print('5. Sair');

    stdout.write('Opção: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        adicionarContato(agenda);
        break;
      case '2':
        editarContato(agenda);
        break;
      case '3':
        removerContato(agenda);
        break;
      case '4':
        listarContatos(agenda);
        break;
      case '5':
        print('Saindo...');
        return;
      default:
        print('Opção inválida. Por favor, escolha uma opção válida.');
    }
  }
}

void adicionarContato(Map<String, String> agenda) {
  stdout.write('Nome do contato: ');
  String nome = stdin.readLineSync()!;
  stdout.write('Número de telefone: ');
  String numero = stdin.readLineSync()!;
  agenda[nome] = numero;
  print('Contato adicionado com sucesso.');
}

void editarContato(Map<String, String> agenda) {
  stdout.write('Nome do contato a ser editado: ');
  String nome = stdin.readLineSync()!;
  if (agenda.containsKey(nome)) {
    stdout.write('Novo número de telefone: ');
    String novoNumero = stdin.readLineSync()!;
    agenda[nome] = novoNumero;
    print('Contato editado com sucesso.');
  } else {
    print('Contato não encontrado na agenda.');
  }
}

void removerContato(Map<String, String> agenda) {
  stdout.write('Nome do contato a ser removido: ');
  String nome = stdin.readLineSync()!;
  if (agenda.containsKey(nome)) {
    agenda.remove(nome);
    print('Contato removido com sucesso.');
  } else {
    print('Contato não encontrado na agenda.');
  }
}

void listarContatos(Map<String, String> agenda) {
  if (agenda.isEmpty) {
    print('A agenda está vazia.');
  } else {
    print('Lista de contatos:');
    agenda.forEach((nome, numero) {
      print('Nome: $nome - Número: $numero');
    });
  }
}