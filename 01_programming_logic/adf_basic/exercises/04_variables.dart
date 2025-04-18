/*
Imagine que você está construindo um sistema para uma loja de roupas e você foi convocado para construir um algoritimo onde você irá cadastrar os produtos da loja.

Atividade:

Crie as variáveis que envolvam o cadastro do produto;
Atribua valores a elas;
Faça a impressão de todas as variáveis;
*/

void main() {
  final clothingProduct = ClothingProductModel(
    id: 501,
    name: 'Camiseta Estampada',
    photoUrl: 'https://img/lojaroupas.com.br/camiseta-estampada.jpg',
    size: 'M',
    color: 'Preto',
    price: 79.90,
    category: 'Camisetas',
    material: 'Algodão',
  );

  print(clothingProduct);
}

class ClothingProductModel {
  final int id;
  final String name;
  final String photoUrl;
  final String size;
  final String color;
  final double price;
  final String category;
  final String material;

  ClothingProductModel({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.size,
    required this.color,
    required this.price,
    required this.category,
    required this.material,
  });

  @override
  String toString() {
    return '''
      --- Dados do Produto ---
      ID: $id
      Nome: $name
      Tamanho: $size
      Cor: $color
      Preço: R\$${price.toStringAsFixed(2)}
      Categoria: $category
      Material: $material
      Foto: $photoUrl
      ''';
  }
}
