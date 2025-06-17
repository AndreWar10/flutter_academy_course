/*
https://gist.github.com/repoadf/b7a3c0ee688924d8b9ab5003fce8d958?_gl=1*ag3ta3*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*czE3NTAxMTk2ODAkbzE1JGcxJHQxNzUwMTIxNDY3JGo2MCRsMCRoMA..

TCC Cuidapet
Fase 9
Você deve alterar o sistema para que ele funcione para N clientes e não mais apenas 18 vezes.

Ao final da consulta de um cliente, o sistema deve apresentar os itens de menu acrescido da opção 10 – Sair.

Ao digitar a opção 10, o sistema deve sair do programa e exibir quantos clientes usaram o sistema naquele dia.
*/

import 'dart:io';

void main() {
  int totalClientes = 0;

  while (true) {
    print('\n>>> NOVO ATENDIMENTO <<<');
    print('Você é cliente ou funcionário? (Digite "cliente" ou "funcionario")');
    var tipoUsuario = stdin.readLineSync()?.toLowerCase();

    if (tipoUsuario == 'funcionario') {
      acessarComoFuncionario();
    } else if (tipoUsuario == 'cliente') {
      totalClientes++;
      bool continuar = runWelcomeMessageToClient();
      if (!continuar) {
        break;
      }
    } else {
      print('Opção inválida. Tente novamente.');
    }
  }

  print('\n>>> O sistema foi utilizado por $totalClientes cliente(s) hoje. <<<');
}

void acessarComoFuncionario() {
  print('Digite o nome do cliente:');
  var nome = stdin.readLineSync();

  if (nome == 'cuidapetrestrito') {
    gerarOrdemDeServico();
  } else {
    runWelcomeMessageToClient();
  }
}

void gerarOrdemDeServico() {
  const precoRacao = 280.00;
  const precoBanho = 54.00;
  const precoTosaHigienica = 10.99;
  const precoHidratacao = 39.99;

  double total = 0;

  print('O cliente comprou Ração Royal Canin Indor 7,5kg? (S/N)');
  var comprouRacao = stdin.readLineSync()?.toUpperCase() == 'S';
  if (comprouRacao) total += precoRacao;

  print('O cliente solicitou banho e tosa? (S/N)');
  var solicitouBanho = stdin.readLineSync()?.toUpperCase() == 'S';
  if (solicitouBanho) total += precoBanho;

  print('O cliente solicitou tosa higiênica? (S/N)');
  var solicitouTosa = stdin.readLineSync()?.toUpperCase() == 'S';
  if (solicitouTosa) total += precoTosaHigienica;

  print('O cliente solicitou hidratação? (S/N)');
  var solicitouHidratacao = stdin.readLineSync()?.toUpperCase() == 'S';
  if (solicitouHidratacao) total += precoHidratacao;

  double desconto = 0;

  // Promoção 10%
  if (comprouRacao && solicitouBanho) {
    desconto += precoBanho * 0.10;
  }

  // Promoção 20%
  if (solicitouBanho && solicitouTosa && solicitouHidratacao) {
    desconto += (precoBanho + precoTosaHigienica + precoHidratacao) * 0.20;
  }

  double totalComDesconto = total - desconto;

  showDivider(mininum: true);
  print('ORDEM DE SERVIÇO');
  showDivider(mininum: true);
  print('Valor total: R\$ ${total.toStringAsFixed(2)}');
  print('Desconto aplicado: R\$ ${desconto.toStringAsFixed(2)}');
  print('Valor final com desconto: R\$ ${totalComDesconto.toStringAsFixed(2)}');
  showDivider(mininum: false);
}

bool runWelcomeMessageToClient() {
  print('What`s your name?');
  var clientName = stdin.readLineSync();

  print('Hi $clientName! Welcome to CuidaPet :)');
  print('We offer products and services for your pet in our store. To sell products, look for our Junior employee and for services such as bathing or grooming, look for our Neto employee. Thank you and we hope you have a great experience in our store.');
  showDivider(mininum: false);

  String? optionSelected;
  while (optionSelected != '10') {
    print('Please, choose an option:');
    print('1 - View product offers');
    print('2 - View service offers');
    print('3 - View clothes offers');
    print('4 - View new services');
    print('5 - Promotion - 10% Discount');
    print('6 - Promotion - 20% Discount');
    print('7 - Exit');
    print('10 - Sair do sistema');
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
        print('Buy a 15kg bag of food (R\$ 345.99) and get a 10% discount on the bath.');
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
        print('Leaving...');
        break;
      case '10':
        print('Saindo do sistema...');
        return false;
      default:
        print('Invalid Option');
        showDivider(mininum: true);
        break;
    }
  }

  return true;
}

void showDivider({required bool mininum}) =>
    print(mininum ? '----------------' : '----------------------------------------------------------------------');

