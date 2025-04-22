/*
https://gist.github.com/repoadf/8a9fb4a13ed16f2f729771aa1362019a?_gl=1*10jhgn7*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NTI4MzI2OC4xNC4xLjE3NDUyODUxMTEuMC4wLjA.

Descrição da Atividade
Crie um programa que solicite ao usuário a estação do ano desejada, e o sistema deve apresentar o dia que começa a estação, são elas:

outono - 20 de março, inverno - 21 junho, primavera - 22 setembro e verão - 21 de dezembro.
*/

import 'dart:io';

void main() {
  print('Digite a estação do ano desejada (outono, inverno, primavera, verão):');

  var input = stdin.readLineSync();

  try {
    if (input == null || input.isEmpty) {
      print('Entrada inválida!');
      return;
    }

    final season = input.toLowerCase().trim();

    String startDate;

    if (season == 'outono') {
      startDate = '20 de março';
    } else if (season == 'inverno') {
      startDate = '21 de junho';
    } else if (season == 'primavera') {
      startDate = '22 de setembro';
    } else if (season == 'verão' || season == 'verao') {
      // Aceita "verao" sem acento também
      startDate = '21 de dezembro';
    } else {
      print('Estação inválida! Tente: outono, inverno, primavera ou verão.');
      return;
    }

    print('A estação "$season" começa em $startDate.');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
