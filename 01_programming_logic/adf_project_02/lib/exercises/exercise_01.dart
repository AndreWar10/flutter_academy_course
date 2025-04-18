/*
https://gist.github.com/repoadf/707d1e3004d08c9b20677b89f542e0d9?_gl=1*o16ri4*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDkxMjY5OS4xMC4xLjE3NDQ5MTUwMzcuMC4wLjA.
Descrição da Atividade
Crie um programa que pergunte a um aluno ou aluna o seu nome, a idade e altura. Depois de obter esses valores, apresente na tela os dados solicitados.
*/

import 'dart:io';

void main() {

  print('What`s your name?');
  var name = stdin.readLineSync();

  print('How old are you?');
  var age = stdin.readLineSync();

  print('What`s your height?');
  var heigth = stdin.readLineSync();

  print('Hi $name! Your age is $age and your heigth is $heigth');

}