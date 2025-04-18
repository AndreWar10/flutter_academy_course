import 'dart:io';
/*
https://gist.github.com/repoadf/1d49894c8ed63bacaee2733806d738ee?_gl=1*viidon*_ga*MTE1NzUwMDE5MC4xNzQ0MzkwMzY3*_ga_37GXT4VGQK*MTc0NDk0NzIwOC4xMS4xLjE3NDQ5NDg2NDYuMC4wLjA.

Descrição da Atividade
Crie um programa para uma loja de sucos. O preço de cada suco é R$ 5.50, porém, se o cliente comprar mais de 10 sucos, o preço individual 
passa para R$ 4.50. O programa deve solicitar a quantidade de sucos desejados pelo cliente e apresentar o preço final a ser pago.
*/

const double juicePriceDefault = 5.50;
const double juicePriceWithDiscount = 4.50;
const int quantityToFetchDiscount = 10;

void main() {
  try {
    print('Welcome to juice`s house!!');
    print('Unit Price juice: R\$$juicePriceDefault');
    print('PROMOTION: when you buy 10 or more juices, the unit price of the juice goes up to R\$$juicePriceWithDiscount!');

    print('How many juices do you want?');
    var quantityJuiceInput = stdin.readLineSync() as String;
    int juiceQuantity = int.parse(quantityJuiceInput);

    double pricePurchase = calculatePurchasePrice(juiceQuantity: juiceQuantity);
    print('Total Price of $pricePurchase juice(s): $pricePurchase');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}

bool checkIfClientHasDiscount(int juiceQuantity) => juiceQuantity >= quantityToFetchDiscount;

double calculatePurchasePrice({required int juiceQuantity}) {
  bool clientHasDiscount = checkIfClientHasDiscount(juiceQuantity);
  double totalPrice = juiceQuantity * (clientHasDiscount ? juicePriceWithDiscount : juicePriceDefault);

  return totalPrice;
}