/*
https://gist.github.com/repoadf/79be39678625c0a99af89c2c6d9cea23?_gl=1*gtse6y*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NTI4MzI2OC4xNC4xLjE3NDUyODUxODkuMC4wLjA.

TCC Cuidapet
Imagine que o dono de um Petshop (Pedro) solicitou a você a criação de um sistema para a loja dele de auto atendimento.
O cliente poderá pesquisar produtos e serviços assim que chegar na sua loja.

Fase 5
Com o crescimento da loja, o sistema deve apresentar no menu outras duas opções que são os itens:
3 - Ver ofertas de roupas
4 - Ver novos serviços.

Ao selecionar o item 3 do menu, o sistema deve exibir: Roupas em oferta - Capa de chuva R$59,99"
Ao selecionar o item 4 do menu, o sistema deve exibir:
Novos serviços oferecidos: Hidratação de pelo R$ 39,99 | Tosa higienica por R$ 10,99 | Tingimento dos pelo por R$ 55,99.
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
  while (optionSelected != '5') {
    print('Please, choose an option:');
    print('1 - View product offers');
    print('2 - View service offers');
    print('3 - View clothes offers');
    print('4 - View new services');
    print('5 - Exit');
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
        showDivider(mininum: true);
        print('CLOTHES OFFERS:');
        showDivider(mininum: true);
        print('Raincoat R\$59,99');
        showDivider(mininum: false);
        break;
      case '4': 
        showDivider(mininum: true);
        print('SERVICE OFFERS:');
        showDivider(mininum: true);
        print('Hair hydration R\$ 39.99');
        print('Hygienic grooming for R\$ 10.99');
        print('Hair dyeing for R\$ 55.99');
        showDivider(mininum: false);
        break;
      case '5':
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
