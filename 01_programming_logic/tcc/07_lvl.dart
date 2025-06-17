/*
https://gist.github.com/repoadf/8ed17baf5935e4644f8923b810bff051?_gl=1*rb02kr*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*czE3NTAxMTk2ODAkbzE1JGcxJHQxNzUwMTIxMDQ5JGo1MyRsMCRoMA..

TCC Cuidapet
Imagine que o dono de um Petshop (Pedro) solicitou a você a criação de um sistema para a loja dele de auto atendimento.

O cliente poderá pesquisar produtos e serviços assim que chegar na sua loja.

Fase 7
Com o crescimento da loja, Pedro distribuiu diversos computadores para que os clientes pudessem consultar o sistema de qualquer local da loja.

Além disso, ele solicitou que o sistema fosse alterado de forma que os funcionários pudessem gerar uma ordem de serviço (OS) de qualquer computador.

Inicialmente Pedro solicitou que o sistema perguntasse na tela principal se o acesso seria como cliente ou funcionário.

Se o usuário escolher cliente, o sistema deve funcionar como funcionava até essa nova versão.

Se o usuário escolher funcionário, o sistema deve solicitar o código de acesso.

Para não ter uma pergunta a mais para o cliente, o sistema foi desenvolvido da seguinte maneira:

se no nome do cliente for digitado cuidapetrestrito, o sistema abre o módulo para abertura de OS.

Caso o texto seja diferente, ou seja, qualquer outro nome, o sistema funciona apresentando o menu como anteriormente.

O sistema deve solicitar ao funcionário as seguintes informações:

O cliente comprou ração Ração Royal Canin Indor 7,5kg? Digite S ou N.
O cliente solicitou banho e tosa? Digite S ou N.
O cliente solicitou tosa higienica? Digite S ou N.
O cliente solicitou hidratação? Digite S ou N.
Ao final, o sistema deve apresentar o valor com os descontos, se for o caso, da ordem de serviço.
*/
import 'dart:io';

void main() {
  print('Você é cliente ou funcionário? (Digite "cliente" ou "funcionario")');
  var tipoUsuario = stdin.readLineSync()?.toLowerCase();

  if (tipoUsuario == 'funcionario') {
    acessarComoFuncionario();
  } else {
    runWelcomeMessageToClient();
  }
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

void runWelcomeMessageToClient() {
  print('What`s your name?');
  var clientName = stdin.readLineSync();

  print('Hi $clientName! Welcome to CuidaPet :)');
  print('We offer products and services for your pet in our store. To sell products, look for our Junior employee and for services such as bathing or grooming, look for our Neto employee. Thank you and we hope you have a great experience in our store.');
  showDivider(mininum: false);

  String? optionSelected;
  while (optionSelected != '7') {
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
        print('Leaving..');
        break;
      default:
        print('Invalid Option');
        showDivider(mininum: true);
        break;
    }
  }
}

void showDivider({required bool mininum}) =>
    print(mininum ? '----------------' : '----------------------------------------------------------------------');
