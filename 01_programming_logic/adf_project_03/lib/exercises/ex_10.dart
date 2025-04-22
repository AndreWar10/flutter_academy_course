/*
https://gist.github.com/repoadf/2c9be0703aa9b35f9573e0075886ff5a?_gl=1*rmcgc5*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NTI4MzI2OC4xNC4xLjE3NDUyODQyOTcuMC4wLjA.
Descrição da Atividade
Vamos imaginar o sistema de votação atual no Brasil.

Ele é realizado de acordo com a idade das pessoas.

As regras de votação são:

Menores de 16 anos não podem votar;
De 16 anos até 17 anos, o voto é facultativo;
De 18 anos até 69 anos, o voto é obrigatório;
Maiores que 70 anos, o voto é facultativo;
Escreva esse algoritmo somente com condicionais compostas e, em seguida, reescreva o mesmo algoritmo usando condicionais múltiplas.

Dificuldade (M)
Legenda:
F - fácil / M - médio / T - trabalhoso
*/

import 'dart:io';

void main() {
  print('How old are you?');
  var ageInput = stdin.readLineSync() as String;

  try {
    final int age = int.parse(ageInput);

    if(age >= 16) {
      if(age >= 18 && age <= 69) {
        print('you have to vote');
      } else {
        print('you can choose vote');
      }
    } else {
      print('you can\'t vote yet!');
    }
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
