/*
Imagine que o dono de um Petshop (Pedro) solicitou a você a criação de um sistema para a loja dele de auto atendimento.
O cliente poderá pesquisar produtos e serviços assim que chegar na sua loja.

Fase 2
Pedro solicitou alteração no seu sistema. Além da mensagem de boas-vindas, você deve alterar o algoritmo para que ele apresente um texto com o endereço e o número da loja.
Você deve armazenar essas informações em variáveis. Apresente na tela a nova mensagem.
*/

void main() {
  runWelcomeMessageToClient();
}

void runWelcomeMessageToClient() {
  final String storeName = 'Cuidapet';
  final String storeAddress = 'Av. das Flores, 123';
  final String storeNumber = '(11) 98765-4321';

  print('Sejam bem-vindos a loja $storeName! \nEm breve teremos um sistema de autoatendimento!');
  print('Estamos localizados em: $storeAddress');
  print('Telefone para contato: $storeNumber');
}
