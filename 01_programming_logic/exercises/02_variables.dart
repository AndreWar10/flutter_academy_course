/*
Imagine que você está construindo um sistema para um supermercado e você foi convocado para construir um algoritimo onde você irá cadastrar os produtos.

Atividade::

Crie as variáveis que envolvam o cadastro de produtos
*/

class ProductModel {
  final int idProduct;
  final String nameProduct;
  final String photoUrlProduct;
  final int quantityProducts;
  final double price;
  final String category;
  final String description;

  ProductModel({
    required this.idProduct,
    required this.nameProduct,
    required this.photoUrlProduct,
    required this.quantityProducts,
    required this.price,
    required this.category,
    required this.description,
  });

  @override
  String toString() {
    return 'ID: $idProduct, Nome: $nameProduct, Descrição: $description, Foto: $photoUrlProduct, Quantidade: $quantityProducts, Preço: $price, Categoria: $category';
  }
}

void main() {
  final product = ProductModel(
    idProduct: 15723,
    nameProduct: 'Parafusadeira',
    photoUrlProduct: 'https://img/parafusadeira.com.br',
    quantityProducts: 35,
    price: 299.99,
    category: 'Ferramentas',
    description: 'Parafusadeira Vonder 120V',
  );

  print(product);
}
