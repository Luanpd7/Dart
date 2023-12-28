/* Utilizando lista para organizar livros em forma de pilha inserido pelo usuário
onde o primeiro livro adicionado é o primeiro a sair, métodos utilizado foi o add 
para adicionar, lenght para retornar a quantidade de livro, pilha.last para retornar
o ultimo livro inserido e removerLast para remover o ultimo.  */

import 'dart:io';

void main() {
  List<String> pilha = [];
  bool cond = true;
  while (cond) {
    print("1 - Empilhar Livro");
    print("2 - Pegar Livro");
    String? opc = stdin.readLineSync();

    if (opc != null) {
      switch (opc) {
        case "1":
          pilha = addBook();
        case "2":
          getBook(pilha);
        case "0":
          cond = false;
      }
    }
  }
}

                        //Método para adicionar livro na pilha 
List<String> addBook() {
  List<String> pilha = [];
  String? book;
  do {
    print("Insira o livro");
    book = stdin.readLineSync();

    if (book != null && book != "0") {
      pilha.add(book);
    }
  } while (book != "0");
  return pilha;
}

                          //Método para pegar o ultimo livro inserido
void getBook(List<String> pilha) {
  print(pilha);
  if (pilha.length != 0) {  //Se pilha não tiver vazia, irá fazer uma ação
    String book = pilha.last;    //Guardar o ultimo livro da pilha
    print(book);
    pilha.removeLast();      //Remover o ultimo livro
  } else {
    print("Não a mais livro na pilha");
  }
}
