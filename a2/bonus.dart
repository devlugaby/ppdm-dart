void calculateMinimumCoins(int amount) {
  List<int> coinValues = [100, 50, 10, 5, 1];
  List<int> coinCounts = [0, 0, 0, 0, 0];

  int remainingAmount = amount;
  
  for (int i = 0; i < coinValues.length; i++) {
    coinCounts[i] = remainingAmount ~/ coinValues[i];
    remainingAmount %= coinValues[i];
  }
  
  print("Para o valor B\$$amount, são necessárias:");
  for (int i = 0; i < coinValues.length; i++) {
    if (coinCounts[i] > 0) {
      print("${coinCounts[i]} moeda(s) de B\$ ${coinValues[i]},00");
    }
  }
}

void main() {
  int valor = 187;
  calculateMinimumCoins(valor);
}
