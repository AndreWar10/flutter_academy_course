/*
https://gist.github.com/repoadf/0545e777fce6a50b14f93fffcb980be5?_gl=1*1q7mm6j*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*czE3NTAxMTk2ODAkbzE1JGcxJHQxNzUwMTIwMDk0JGo1NSRsMCRoMA..

TCC Cuidapet
Imagine que o dono de um Petshop (Pedro) solicitou a você a criação de um sistema para a loja dele de auto atendimento.

O cliente poderá pesquisar produtos e serviços assim que chegar na sua loja.

Fase 6
Com o crescimento da loja, o sistema deve apresentar no menu outras duas opções que são:

5 - Promoção I 10% de desconto
6 - Promoção II 20% de desconto.
Descrição da promoção I: Compre um saco de 15kg de ração (R$ 345,99) e ganhe 10% de desconto no banho.

Descrição da promoção II: Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.
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
    print('5 - Promotion - 10% Discount');
    print('6 - Promotion - 20% Discount');
    print('7 - Exit');
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
        showDivider(mininum: true);
        print('PROMOTION - 10% DISCOUNT');
        showDivider(mininum: true);
        print('Buy a 15kg bag of food (R$ 345.99) and get a 10% discount on the bath.');
        showDivider(mininum: false);
        break;
      case '6': 
        showDivider(mininum: true);
        print('PROMOTION - 20% DISCOUNT');
        showDivider(mininum: true);
        print('Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.');
        showDivider(mininum: false);
        break;
      case '7':
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
