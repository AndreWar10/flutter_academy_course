/*
https://gist.github.com/repoadf/b36c5e070e1071f96ebe07db550c6236?_gl=1*1w0p1cb*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NTI4MzI2OC4xNC4xLjE3NDUyODUwNTcuMC4wLjA.

Descrição da Atividade
Crie um programa para uma loja de sucos no qual são oferecidos os seguintes sucos: L - Laranja, M - Morango, A - Acerola e U - Uva.

O usuário deve informar uma letra e o sistema apresentará o nome do suco e qual a principal vitamina que o suco fornece, são elas: laranja vitamina C, morango vitamina A, acerola vitamina C e uva vitamina E.
*/

import 'dart:io';

void main() {
  print('Escolha um suco digitando a letra correspondente:');
  print('L - Laranja');
  print('M - Morango');
  print('A - Acerola');
  print('U - Uva');

  var input = stdin.readLineSync();

  try {
    if (input == null || input.isEmpty) {
      print('Entrada inválida!');
      return;
    }

    final letter = input.toUpperCase();

    String juice;
    String vitamin;

    if (letter == 'L') {
      juice = 'Suco de Laranja';
      vitamin = 'Vitamina C';
    } else if (letter == 'M') {
      juice = 'Suco de Morango';
      vitamin = 'Vitamina A';
    } else if (letter == 'A') {
      juice = 'Suco de Acerola';
      vitamin = 'Vitamina C';
    } else if (letter == 'U') {
      juice = 'Suco de Uva';
      vitamin = 'Vitamina E';
    } else {
      print('Opção inválida! Use apenas L, M, A ou U.');
      return;
    }

    print('$juice - Principal vitamina: $vitamin');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
