import 'dart:io';
/*
https://gist.github.com/repoadf/fe423cd8fd00c77b10d797c3358039e4?_gl=1*dy8hha*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDk0NzIwOC4xMS4xLjE3NDQ5NTAyNjIuMC4wLjA.

Descrição da Atividade
Crie um programa para calcular e informar se compensa mais abastecer um automóvel com gasolina ou com etanol. O programa deve solicitar 
ao usuário o preço da gasolina e, em seguida, o preço do etanol. Depois efetuar a divisão do preço do etanol pelo preço da gasolina. 
Se o resultado for maior ou igual a 0.7, o programa deve apresentar a mensagem "Compensa abastecer com gasolina". 
Caso contrário, o programa deve apresentar a mensagem "Compensa abastecer com etanol."
*/

void main() {
  print('What`s the price of gasoline?');
  var priceGasolineInput = stdin.readLineSync() as String; 

  print('What`s the price of ethanol?');
  var priceEthanolInput = stdin.readLineSync() as String;

  try {
    final double priceGasoline = double.parse(priceGasolineInput);
    final double priceEthanol = double.parse(priceEthanolInput);

    final bool compensatesGasoline = verifyIfCompensatesGasoline(gasolinePrice: priceGasoline, ethanolPrice: priceEthanol);
    print('Compensates ${compensatesGasoline ? 'GASOLINE' : 'ETHANOL'}');

  } catch (e) {
    print('Error: ${e.toString()}');
  }
}

bool verifyIfCompensatesGasoline({required double gasolinePrice, required double ethanolPrice}) {
  const double rateToChoiceGasoline = 0.7;

  final ethanolToGasolineRatio = ethanolPrice / gasolinePrice;
  final bool compensatesGasoline = ethanolToGasolineRatio >= rateToChoiceGasoline;
  return compensatesGasoline;
}