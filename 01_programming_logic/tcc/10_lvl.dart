/*
https://gist.github.com/repoadf/fdf21dedf97d52fe11549cc43b1c5ce3?_gl=1*1i3kr0b*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*czE3NTAxMTk2ODAkbzE1JGcxJHQxNzUwMTIxNzAzJGoyMCRsMCRoMA..

TCC Cuidapet
Fase 11
Com o crescimento de sua loja, Pedro solicitou novas funcionalidades para o sistema.

Os desenvolvedores sugeriram criar do zero uma versão 2.0 e manter somente as funcionalidades mais utilizadas da versão anterior.

O sistema deve funcionar da seguinte maneira:

Na tela principal, será apresentada a mensagem “Bem vindo ao autoatendimento do Cuidapet” Abaixo da mensagem deve ser exibida a mensagem solicitando o nome do cliente.

Ao digitar seu nome, o sistema deve apresentar o seguinte menu:

Opção 1 – Ver promoções.
Opção 2 – Solicitar serviço.
Opção 3 – Listar carrinho de compra.
Opção 4 - Finalizar carrinho de compra.
Opção 0 - Sair.
Abaixo deve ser exibida a mensagem “Digite sua opção desejada:”.

Se o cliente digitar a Opção 1, o sistema deve apresentar os seguintes itens:

Código 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg na promoção pelo preço de R$ 290,00.
Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R$ 492,00.
Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R$23,92.
Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R$ 38,61.
8 – Adicionar ao carrinho de compras.
0 – Voltar.
Se o cliente digitar a Opção 2, o sistema deve apresentar os serviços disponíveis:

Código 201 - Banho e tosa - R$ 55,99.
Código 202 - Tosa higienica -R$ 12,99.
Código 203 - Hidratação dos pelos - R$ 20,99.
8 – Adicionar ao carrinho de compras.
0 – Voltar.
Se o cliente digitar a Opção 3, o sistema deve listar o nome e o valor dos produtos incluídos no carrinho de compras.

Se o cliente digitar a Opção 4, o sistema deve perguntar a forma de pagamento (dinheiro ou cartão). No dinheiro, o sistema deve calcular 10% de desconto do valor final.

Observação: no autoatendimento, o cliente consegue adicionar no máximo 3 produtos/serviços em seu carrinho de compras. Se ele atingir esse número, o sistema deve apresentar a mensagem informando que o seu carrinho de compras já está cheio. Acesso restrito

Ao digitar o código cuidapetrestrito no lugar do nome do cliente, o sistema deve abrir a área restrita dos funcionários.

O sistema deve perguntar o nome do cliente e o valor gasto na loja. Nesses casos, o próprio funcionário acompanhou o cliente e sabe exatamente os itens comprados ou serviços adquiridos.

O funcionário deve entrar com a forma de pagamento (D – dinheiro ou C – cartão), e o sistema deve apresentar o valor final a ser pago. Se o pagamento for no dinheiro, o sistema deve calcular 10% de desconto no valor final.

Funcionamento geral do sistema
O sistema deve validar todas as entradas do teclado, quando possível;

O sistema deve ficar rodando até que seja a opção 0 no menu principal.

O sistema deve apresentar a quantidade de vendas e o valor total das vendas do dia ao ser finalizado.

Quando acessado o menu Adicionar ao carrinho de compras o sistema deve solicitar o código do produto para assim poder adicionar o produto ao carrinho seguindo as regras anteriores.
*/

import 'dart:io';

void main() {
  int totalVendas = 0;
  double valorTotalDia = 0;

  while (true) {
    print('\nBem-vindo ao autoatendimento do CuidaPet');
    stdout.write('Digite seu nome: ');
    String? nome = stdin.readLineSync();

    if (nome == 'cuidapetrestrito') {
      // Acesso restrito do funcionário
      print('>>> ÁREA RESTRITA <<<');
      stdout.write('Digite o nome do cliente: ');
      String? nomeCliente = stdin.readLineSync();

      stdout.write('Digite o valor gasto pelo cliente: ');
      double? valor = double.tryParse(stdin.readLineSync()!);
      if (valor == null) {
        print('Valor inválido.');
        continue;
      }

      stdout.write('Forma de pagamento (D - dinheiro, C - cartão): ');
      String? forma = stdin.readLineSync()?.toUpperCase();

      if (forma == 'D') {
        valor *= 0.90;
        print('Desconto de 10% aplicado. Valor final: R\$ ${valor.toStringAsFixed(2)}');
      } else {
        print('Valor final: R\$ ${valor.toStringAsFixed(2)}');
      }

      totalVendas++;
      valorTotalDia += valor;
      continue;
    }

    // Cliente comum
    List<Map<String, dynamic>> carrinho = [];
    while (true) {
      print('\nMENU PRINCIPAL');
      print('1 - Ver promoções');
      print('2 - Solicitar serviço');
      print('3 - Listar carrinho de compra');
      print('4 - Finalizar carrinho de compra');
      print('0 - Sair');
      stdout.write('Digite sua opção desejada: ');
      String? opcao = stdin.readLineSync();

      if (opcao == '0') break;

      switch (opcao) {
        case '1':
          mostrarProdutos();
          adicionarProdutoAoCarrinho(carrinho);
          break;
        case '2':
          mostrarServicos();
          adicionarProdutoAoCarrinho(carrinho);
          break;
        case '3':
          listarCarrinho(carrinho);
          break;
        case '4':
          if (carrinho.isEmpty) {
            print('Seu carrinho está vazio.');
            break;
          }
          double total = carrinho.fold(0, (sum, item) => sum + item['preco']);
          stdout.write('Forma de pagamento (dinheiro/cartão): ');
          String? forma = stdin.readLineSync()?.toLowerCase();
          if (forma == 'dinheiro') {
            total *= 0.90;
            print('Desconto de 10% aplicado.');
          }
          print('Valor final: R\$ ${total.toStringAsFixed(2)}');
          totalVendas++;
          valorTotalDia += total;
          carrinho.clear();
          break;
        default:
          print('Opção inválida.');
      }
    }

    stdout.write('Deseja sair do sistema? (s/n): ');
    if ((stdin.readLineSync() ?? '').toLowerCase() == 's') {
      break;
    }
  }

  print('\nSistema finalizado.');
  print('Quantidade de vendas: $totalVendas');
  print('Valor total das vendas: R\$ ${valorTotalDia.toStringAsFixed(2)}');
}

// Dados dos produtos e serviços
final produtos = [
  {'codigo': '101', 'nome': 'Ração Royal Canin Indoor 7,5kg', 'preco': 290.0},
  {'codigo': '102', 'nome': 'Ração Royal Canin Sterilised', 'preco': 492.0},
  {'codigo': '103', 'nome': 'Bifinho Keldog Carne e Cereais', 'preco': 23.92},
  {'codigo': '104', 'nome': 'Fraldas Descartáveis (12 Unid)', 'preco': 38.61},
];

final servicos = [
  {'codigo': '201', 'nome': 'Banho e tosa', 'preco': 55.99},
  {'codigo': '202', 'nome': 'Tosa higiênica', 'preco': 12.99},
  {'codigo': '203', 'nome': 'Hidratação dos pelos', 'preco': 20.99},
];

void mostrarProdutos() {
  print('\n--- PROMOÇÕES ---');
  for (var p in produtos) {
    print('${p['codigo']} - ${p['nome']} por R\$ ${p['preco']}');
  }
  print('8 - Adicionar ao carrinho');
  print('0 - Voltar');
}

void mostrarServicos() {
  print('\n--- SERVIÇOS DISPONÍVEIS ---');
  for (var s in servicos) {
    print('${s['codigo']} - ${s['nome']} por R\$ ${s['preco']}');
  }
  print('8 - Adicionar ao carrinho');
  print('0 - Voltar');
}

void adicionarProdutoAoCarrinho(List<Map<String, dynamic>> carrinho) {
  stdout.write('Digite uma opção (8 para adicionar, 0 para voltar): ');
  String? opc = stdin.readLineSync();
  if (opc == '8') {
    if (carrinho.length >= 3) {
      print('Carrinho cheio! Máximo de 3 itens.');
      return;
    }

    stdout.write('Digite o código do produto ou serviço: ');
    String? codigo = stdin.readLineSync();

    var item = [...produtos, ...servicos].firstWhere(
      (e) => e['codigo'] == codigo,
      orElse: () => {},
    );

    if (item.isEmpty) {
      print('Código inválido.');
      return;
    }

    carrinho.add(item);
    print('${item['nome']} adicionado ao carrinho.');
  }
}

void listarCarrinho(List<Map<String, dynamic>> carrinho) {
  if (carrinho.isEmpty) {
    print('Carrinho vazio.');
    return;
  }
  print('\n--- CARRINHO ---');
  for (var item in carrinho) {
    print('${item['nome']} - R\$ ${item['preco']}');
  }
}
