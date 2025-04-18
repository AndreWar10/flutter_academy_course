import 'dart:io';
/*
https://gist.github.com/repoadf/3f408004e9f3aa73cf3e48924733f9c9?_gl=1*oeyqkc*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDkxMjY5OS4xMC4xLjE3NDQ5MTgzODAuMC4wLjA.
Descrição da Atividade
Crie um programa que solicite ao usuário um número entre 1 e 10. 
Se o número informado for 5, apresente a mensagem "Você acertou!". 
Caso contrário, o programa não apresenta nenhuma mensagem.
*/

void main() {

  print('Enter a number from 1 to 10');
  var numberInput = stdin.readLineSync() as String;
  double luckyNumber = 5;

  try {
    double number = double.parse(numberInput);
    if(number == luckyNumber) {
      print('You win!!');
    } else {
      print('Try again');
    }
  } catch (e) {
    print(e);
  }

}