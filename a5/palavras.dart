import 'dart:io';

void main() {
  print('Digite uma frase:');
  String frase = stdin.readLineSync()!;
  
  Map<String, int> estatisticasPalavras = contarPalavras(frase);
  
  print('\nEstatísticas de palavras:');
  estatisticasPalavras.forEach((palavra, frequencia) {
    print('$palavra: $frequencia');
  });
}

Map<String, int> contarPalavras(String frase) {
  List<String> palavras = frase.split(' ');
  Map<String, int> estatisticas = {};

  for (String palavra in palavras) {
    palavra = palavra.toLowerCase(); // Convertendo para minúsculas para evitar diferenciação de maiúsculas e minúsculas
    if (estatisticas.containsKey(palavra)) {
      estatisticas[palavra] = estatisticas[palavra]! + 1;
    } else {
      estatisticas[palavra] = 1;
    }
  }
  
  return estatisticas;
}