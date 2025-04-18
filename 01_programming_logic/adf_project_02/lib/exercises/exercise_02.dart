/*
https://gist.github.com/repoadf/e5bf15edb52caab2dce1a4ca287e342a?_gl=1*19d306m*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDkxMjY5OS4xMC4xLjE3NDQ5MTUwMzcuMC4wLjA.
Descrição da Atividade
Crie um programa para solicitar ao usuário o seu nome e uma frase preferida. Você deve mostrar o nome e a frase no console da seguinte maneira: A frase preferida da(o) X é Y. (X é o valor do nome do usuário e Y é a frase digitada pelo usuário).
*/

import 'dart:io';

void main() {

  print('What`s your name?');
  var name = stdin.readLineSync();

  print('What`s your favorite phrase?');
  var phrase = stdin.readLineSync();

  print('The favorite phrase of $name is "$phrase"');

}