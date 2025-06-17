import 'dart:io';

void main() {

  print('Digite a sua idade:');
  var idadeLeitura = stdin.readLineSync() as String;

  print('Digite a quantidade de horas teóricas assistida:');
  var horasTeoricasLeitura = stdin.readLineSync() as String;

  print('Digite a quantidade de horas práticas assistida:');
  var horasPraticasLeitura = stdin.readLineSync() as String;

  var idade = int.parse(idadeLeitura);
  var horasTeorica = int.parse(horasTeoricasLeitura);
  var horasPraticas = int.parse(horasPraticasLeitura);

  // E (And) (&&)
  if(idade >= 18 && horasTeorica >= 45 && horasPraticas >=20){
    print('Apto(a)');
  }else{
    print('Não Apto(a)');
  }

  //OR
    print('Qual a previsão do tempo?');
  var previsao = stdin.readLineSync() as String;

  print('Você tem prova?');
  var temProva = stdin.readLineSync() as String;

  // Operador (OU) (OR) (||)
  if(previsao == 'sol' || temProva == 'n'){
    print('Vou para a praia');
  }else{
    print('não vou para a praia');
  }
  


}