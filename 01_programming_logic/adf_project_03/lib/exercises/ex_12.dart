/*
https://gist.github.com/repoadf/bf84753874ad63ed9b193999b535c2f6?_gl=1*y9m0cy*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NTI4MzI2OC4xNC4xLjE3NDUyODQ4NzQuMC4wLjA.

Descrição da Atividade
Crie um programa que solicite ao usuário um número e apresente na tela qual é o dia da semana do respectivo número.

Considere que os números fornecidos devem estar no intervalo entre 1 e 7. Considere que 1 é domingo, 2 é segunda e assim por diante.
*/

import 'dart:io';

void main() {
  print('Enter a number from 1 to 7 to know the corresponding day of the week:');
  var input = stdin.readLineSync();

  try {
    final int dayNumber = int.parse(input!);

    String day;

    if (dayNumber == 1) {
      day = 'Sunday';
    } else if (dayNumber == 2) {
      day = 'Monday';
    } else if (dayNumber == 3) {
      day = 'Tuesday';
    } else if (dayNumber == 4) {
      day = 'Wednesday';
    } else if (dayNumber == 5) {
      day = 'Thursday';
    } else if (dayNumber == 6) {
      day = 'Friday';
    } else if (dayNumber == 7) {
      day = 'Saturday';
    } else {
      print('Invalid number! Please enter a number between 1 and 7.');
      return;
    }

    print('The day of the week is: $day');
  } catch (e) {
    print('Error: Please enter a valid integer.');
  }
}
