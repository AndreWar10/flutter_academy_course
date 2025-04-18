/*
TCC Cuidapet
Imagine que o dono de um Petshop (Pedro) solicitou a você a criação de um sistema para a loja dele de auto atendimento.
O cliente poderá pesquisar produtos e serviços assim que chegar na sua loja.

Fase 4
Como melhoria no sistema, deve-se apresentar agora um menu com as seguintes opções: 1 - Ver ofertas de Produtos e 2 - Ver ofertas de Serviços.
Essa exibição do menu deve aparecer depois de apresentar as mensagens já solicitadas na fase 3.
Ao selecionar o item 1 do menu, o sistema deve exibir: "Ração Royal Canin Indor 7,5kg com o valor promocional de R$ 280,00".
Ao selecionar o item 2 do menu, o sistema deve exibir: "Banho e tosa na promoção pelo preço do banho R$ 54,00
*/

import 'dart:io';

void main() {
  runWelcomeMessageToClient();
}

void runWelcomeMessageToClient() {

  print('What`s your name?');
  var clientName = stdin.readLineSync();

  print('Hi $clientName! Welcome to CuidaPet :)');
  print('We offer products and services for your pet in our store. To sell products, look for our Junior employee and for services such as bathing or grooming, look for our Neto employee. Thank you and we hope you have a great experience in our store.');
  showDivider(mininum: false);

  String? optionSelected;
  while (optionSelected != '3') {
    print('Please, choose an option:');
    print('1 - View product offers');
    print('2 - View service offers');
    print('3 - Exit');
    optionSelected = stdin.readLineSync()?.toLowerCase();
    
    switch (optionSelected) {
      case '1':
        showDivider(mininum: true);
        print('PRODUCT OFFERS:');
        showDivider(mininum: true);
        print('Royal Canin Indor 7.5kg food with a promotional price of R\$ 280,00');
        showDivider(mininum: false);
        break;
      case '2': 
        showDivider(mininum: true);
        print('SERVICE OFFERS:');
        showDivider(mininum: true);
        print('Bath and grooming on sale for the price of the bath R\$ 54,00');
        showDivider(mininum: false);
        break;
      case '3':
        print('Leaving..');
        break;
      default:
        print('Invalid Option');
        showDivider(mininum: true);
        break;
    }
  }
}
void showDivider({required bool mininum}) => print(mininum ? '----------------' : '----------------------------------------------------------------------');
