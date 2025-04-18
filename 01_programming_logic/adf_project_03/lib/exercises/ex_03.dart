import 'dart:io';
/*
https://gist.github.com/repoadf/b18cc72be739bed6242bbef444b3def9?_gl=1*17kqi2c*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDkxMjY5OS4xMC4xLjE3NDQ5MTg3MDQuMC4wLjA.
Descrição da Atividade
Crie um programa que solicite a velocidade de um carro e apresente a mensagem "MULTADO", 
caso a velocidade seja maior que 80.
*/

void main() {
  final double maximumSpeedAllowed = 80.0;

  print('Enter the speed of the car');
  var velocityInput = stdin.readLineSync() as String;

  try {
    double carVelocity = double.parse(velocityInput);

    if(carVelocity > maximumSpeedAllowed) {
      print('!!! FINED !!!');
    }
    
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}