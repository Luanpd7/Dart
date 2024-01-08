import 'dart:io';

import 'Produto.dart';

class Carrinho {
  late bool carrinho;
  Map<String, double> listaProduct = {};

  Carrinho(this.carrinho);
                                           //Método para adicinar produto no Map
  Map<String, double> addProduct() {
    String? cond;

    do {
      print("Adicionar Produto no Carrinho");
      String? product = stdin.readLineSync();

      print("Valor");
      String? values = stdin.readLineSync();

      double? value = double.tryParse(values!);
      if (product != null && value != null) {
        listaProduct[product] = value;          //Adicionando produto e valor no Map  
      }

      print("Deseja Adicionar Mais Produtos? Sim - Não");
      cond = stdin.readLineSync();
    } while (cond != "nao");
    return listaProduct;
  }
                                       //Método getCarrinho significa que este método ira mostrar todos os produtos de forma assíncrona
                                     
  Future getCarrinho(Map<String, double> lista) async {
    print("Carregando...");
    await Future.delayed(Duration(seconds: 2)); //Nesta linha o código vai aguarda 2 segundos para finalizar o bloco
    lista.forEach((key, value) {
      print('$key - $value');     //retornado todos os produtos
    });
  }

                                   //Buscando o valor do produto de forma assíncrona 
  Future searchValueProduct(Map<String, double> lista) async {
    print("Buscar Preço do Produto");
    String? searching = stdin.readLineSync();
    print("Carregando...");
    await Future.delayed(Duration(seconds: 2));
    print(lista[searching]);   //Assim que carregado vai mostra o valor do produto fornecido
  }

                                 //Método para remover o produto
  void removeProduct(Map<String, double> lista) {
    print("Remover Produto");
    String? removing = stdin.readLineSync();

    print('Removido $removing');
    lista.remove(removing);  //Removendo
  }
}
