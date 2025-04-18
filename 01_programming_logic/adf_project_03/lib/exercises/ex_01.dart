import 'dart:io';
/*
https://gist.github.com/repoadf/4be6b9d45c2d2e850599e4aec76a4fc7?_gl=1*ydnkl6*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDkxMjY5OS4xMC4xLjE3NDQ5MTcxNTcuMC4wLjA.
Descrição da Atividade
Desenvolva um programa que solicite ao usuário inserir sua idade e o valor do seu celular. 
Em seguida, realize as seguintes operações:

Converta a variável de idade para um número inteiro e incremente 10 anos ao resultado.
Converta a variável de valor do celular para um double e diminua 10 reais do valor obtido.
Apresente ambos na tela
*/

void main() {

  print('How old are you?');
  var ageInput = stdin.readLineSync() as String;

  print('What`s the value of your smartphone?');
  var smartphoneValueInput = stdin.readLineSync() as String;

  try {
    int age = int.parse(ageInput);
    double smartphoneValue = double.parse(smartphoneValueInput);

    void incrementAge(int quantity) => age += quantity;
    void decrementValueOfSmartphone(int value) => smartphoneValue -= value;
    
    incrementAge(10);
    decrementValueOfSmartphone(10);

    print('Your age (+ 10) is $age');
    print('Smartphone value (- 10) is $smartphoneValue');

  } catch (e) {
    print(e);
  }
}

