import 'dart:io';
/*
https://gist.github.com/repoadf/b115b3d5f0c10fd73fd1f772db794ade?_gl=1*j87te8*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDk0NzIwOC4xMS4xLjE3NDQ5NDk3NDYuMC4wLjA.

Descrição da Atividade
Crie um programa para gerenciar uma fila de atendimento. O programa deve perguntar se a pessoa precisa de atendimento prioritário ou não. 
Se for respondido "sim", o programa deve mostrar a mensagem "Vá para os caixas 1, 2 e 3". Caso contrário, o programa deve mostrar 
a mensagem "Vá para qualquer caixa, exceto os 1, 2 e 3, que são prioritários.
*/

void main() {
  const List<int> priorityBoxesList = [1, 2, 3];
  String? needPrioritaryServiceInput;

  print('Welcome to Service Queue!');

  while (needPrioritaryServiceInput != 'sim' && needPrioritaryServiceInput != 'nao') {
    print('You need priority service?');
    needPrioritaryServiceInput = stdin.readLineSync()?.toLowerCase();
    
    if (needPrioritaryServiceInput != 'sim' && needPrioritaryServiceInput != 'nao') {
      print('Entrada inválida! Por favor, digite "sim" ou "nao".');
    }
  }

  bool needPrioritaryService = needPrioritaryServiceInput == 'sim';
  if (needPrioritaryService) {
    print('Vá para os caixas ${priorityBoxesList.join(", ")}.');
  } else {
    print('Vá para qualquer caixa, exceto os ${priorityBoxesList.join(", ")}, que são prioritários.');
  }
}