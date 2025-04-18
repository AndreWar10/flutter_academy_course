import 'dart:io';
/*
https://gist.github.com/repoadf/d695faf72a1b9b511a36ac3c9c750da8?_gl=1*1tipx7k*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDk0NzIwOC4xMS4xLjE3NDQ5NTA5MDcuMC4wLjA.

Descrição da Atividade
Crie um programa que solicite um número inteiro e apresente se ele é positivo ou negativo.
*/

void main() {
  print('Insert an integer number:');
  var numberInput = stdin.readLineSync() as String;

  try {
    final int number = int.parse(numberInput);
    print('The number $number is ${number >= 0 ? 'POSITIVE' : 'NEGATIVE'}');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}