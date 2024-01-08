/* Este é um simples sistema de adicionar o produto no carrinho e após isso terá menu com as opções abaixo.
  Neste código foi usado a Estrutura de Dados Map e fiz um relacionamento de composição, sendo uma relação forte
  e utilizei o conjunto Future, Async e Await para fazer uma operação assíncrona nos métodos getCarrinho e
  searchValueProduct. */

import 'dart:io';
import 'Carrinho.dart';

void main() async {
  Map<String, double> listaProduct = {};
  bool cond = true;
  while (cond) {
    print("1 - Adicionar Produto no Carrinho");
    print("2 - Mostrar Todos Itens do Carrinho");
    print("3 - Buscar Valor do Produto no Carrinho");
    print("4 - Remover Produto");

    String? opc = stdin.readLineSync();
    Carrinho carrinho = Carrinho(true);

    if (opc != null) {
      switch (opc) {
        case "1":
          listaProduct = carrinho.addProduct();
          break;
        case "2":
          await carrinho.getCarrinho(listaProduct);
          break;
        case "3":
          await carrinho.searchValueProduct(listaProduct);
          break;
        case "4":
          carrinho.removeProduct(listaProduct);
          break;
        case "0":
          cond = false;
      }
    }
  }
}
