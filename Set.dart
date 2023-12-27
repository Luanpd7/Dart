/* Utilizando Set e seus métodos para criar uma tabela de time sem o repeti-lo,
onde o usuário terá algumas opções como adicionar o time, inserindo o time dentro do Set times,
ver a tabela utilizando a foreach do Set, qual time não tem mundial usando o método contains,
para remover o time utilizei o remove e para buscar o contains. */

import 'dart:io';

void main() {
  Set<String> times = {};
  bool cond = true;
  while (cond) {
    print("Menu Time");
    print("1 - Adicionar Time");
    print("2 - Ver Tabela");
    print("3 - Ver Que Time Não Tem Mundial");
    print("4 - Remover Time");
    print("5 - Buscar Time");
    print("0 - Sair");
    String? opc = stdin.readLineSync();

    switch (opc) {
      case "1":
        times = addTime();
      case "2":
        viewTable(times);
      case "3":
        notHaveMundial(times);
      case "4":
        removeTime(times);
      case "5":
        searchTime(times);
      case "0":
        cond = false;
    }
  }
}

                       //Método para adicionar time no Set
Set<String> addTime() {
  Set<String> times = {};
  String? time;
  do {
    print('Insira o Time');
    time = stdin.readLineSync();

    if (time != null) {
      times.add(time);        
    }
  } while (time != "0");
  return times;       //Vai retornar a lista após encerrar o loop
}

                                     //Método para mostrar todos os dados do Set
void viewTable(Set<String> times) {
  print("Tabela do Campeonato");

  times.forEach((element) {
    print(element);
  });
}

                                     //Método para ver se o Set tem o time palmeiras
void notHaveMundial(Set<String> times) {
  if (times.contains("palmeiras")) {
    print("palmeiras");
  } else {
    print("palmeiras não se encontra!");
  }
}

                                    //Método para remover algum time do Set
void removeTime(Set<String> times) {
  print("Qual Time Remover");
  String? time = stdin.readLineSync();

  if (times.contains(time)) {    //Nesta linha, se tiver o valor fornecido dentro do set, ele vai remover
    times.remove(time);
  } else {                          //Se não tiver, vai printar a mensagem
    print("esse time não está na tabela");
  }
}

                                   //Para buscar no Set o time que o usuário pediu
void searchTime(Set<String> times) {
  print("Buscar Time");
  String? time = stdin.readLineSync();

  if (times.contains(time)) {
    print(time);
  } else {
    print("esse time não está na tabela");
  }
}
