/* Utilizando lista e seus métodos para criar um simples sistema de gerenciamento de estoque,
 onde o usúario irá digitar no menu as seguintes opções abaixo, os métodos que eu utilizei no 
 código foram "add()" para adicionar na lista, lenght e reduce para visualizar onde,
 lenght seria para saber quantidade e reduce para receber todos os produtos da lista,
 "remove" para remover um item, contains() para buscar um produto no carrinho e first e last
 para retornar o primeiro item e o último. */

import 'dart:io';

void main() {
  List<String> carrinho = [];
  bool cond = true;

  while (cond) {
    print("Menu");
    print("1 - Adiciona Produtos Carrinho");
    print("2 - Visualiazar Carrinho");
    print("3 - Remover Produto");
    print("4 - Pesquisar Produto Carrinho");
    print("5 - Filtrar Primeiro e Ultimo Produto Carrinho");
    print("0 - Sair");
    String? opc = stdin.readLineSync();

    if (opc != null) {
      switch (opc) {
        case "0":
          cond = false;
        case "1":
          carrinho = addProduct();
        case "2":
          viewList(carrinho);
        case "3":
          removeProduct(carrinho);
        case "4":
          searchProduct(carrinho);
        case "5":
          filterFirstLastProduct(carrinho);
        
      }
    }
  }
}

List<String> addProduct() {  //Método para adicionar produto na lista
  String? produto;
  List<String> listaProdutos = [];

  do {
    print("Digite o produto");
    produto = stdin.readLineSync();

    if (produto != null && produto != "0") {
      listaProdutos.add(produto);
    }
  } while (produto != "0");
  return (listaProdutos);
}

void viewList(List<String> lista) {   //Método para saber a quantidade de itens na lista e mostrá todos os elementos
  var unidade = lista.length;
  print("Unidades: $unidade");

  String carrinho = lista.reduce((value, element) {
    return value + ", " + element;
  });
  print(carrinho);
}

void removeProduct(List<String> lista) {            //Método para remover um item
  String carrinho = lista.reduce((value, element) {      //utilizando um método da lista para colocar todo os elementos em uma variável
    return value + ", " + element;  
  });
  print(carrinho);

  print("Qual Produto Remover");
  String? produto = stdin.readLineSync();

  if (produto != null) {
    lista.remove(produto);
    print("$produto removido!");
  }
}


void filterFirstLastProduct(List<String> lista){  //Método para filtrar o primeiro e ultimo da lista
  String first = lista.first;
  String last = lista.last;
   print("Primeiro Produto: $first");
   print("Ultimo Produto: $last");
}


void searchProduct(List<String> lista){      //Método para buscar um item no carrinho
   print("Pesquisar Produto no Carrinho");
  String? produto = stdin.readLineSync();

  if (produto != null) {

  if(lista.contains(produto)){
    print("$produto está no carrinho");
  }else{
     print("Produto não encontrado!");
  }
  }
}