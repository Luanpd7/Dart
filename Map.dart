/* Utilizando Map e seus métodos para um sistema de agendamento de contatos,
 onde o usuário terá um menu com algumas opções. como adicionar o contato com nome
 e numero de telefone, e outras opções como ver todos contatos do Map com uma foreach, 
 quantidade de contatos utilizando o lenght para retornar a qtde de chaves, buscar contato 
 utilizei containsKey para procurar dentro do map o nome fornecido e utilizei o remove para 
 remover o contato. */

import 'dart:io';

void main() {
  Map<String, int> listContact = {};
  bool cond = true;
  do {
    print("1 - Adicionar Contato");
    print("2 - Ver contatos");
    print("3 - Quantidade de Contatos");
    print("4 - Buscar Contato");
    print("5 - Remover Contato");
    print("0 - Sair");
    String? opc = stdin.readLineSync();

    switch (opc) {
      case "1":
        listContact = getListContact();
      case "2":
        viewContact(listContact);
      case "3":
        allContact(listContact);
      case "4":
        searchContact(listContact);
      case "5":
        removeContact(listContact);
      case "0":
        cond = false;
    }
  } while (cond == true);
}

                                  //Método para adicionar as chaves e valores no map, após o usuário inserir
Map<String, int> getListContact() {
  Map<String, int> listContact = {};

  String? name, number, loop;

  do {
    print("Nome do Contato:");
    name = stdin.readLineSync();

    print("Digite o Numero:");
    number = stdin.readLineSync();

    if (name != null && number != null) {
      listContact[name] = int.parse(number);  //nesta linha o Map recebe a chave e o valor
    }

    print("Continuar? sim - nao");
    loop = stdin.readLineSync();
  } while (loop != "nao");

  return listContact;  //O return vai retornar todas as chaves e valores que foi inserido ao longo do loop
}

                                               //Método pra mostrar todas as chave e valor do Map
void viewContact(Map<String, int> contatos) { 
  print('Nome  Numero');

  contatos.forEach((key, value) {
    print('$key - $value');
  });
}

                                             //Método pra mostra a quantidade de contatos
void allContact(Map<String, int> contatos) {
  int all = contatos.length;
  print('$all Contatos');
}

                                            //Neste Método o usúario vai digitar uma chave e o método vai buscar as informações
void searchContact(Map<String, int> contatos) {
  print("Buscar Contato");
  String? seached = stdin.readLineSync();

  if (contatos.containsKey(seached)) { //condição se esse contato existe ou não
    print(contatos[seached]);
  } else {
    print("não encotrado!");
  }
}

                                              //Neste Método o usúario vai digitar a chave que ele quer remover
void removeContact(Map<String, int> contatos) {
  print("Nome para Remover");
  String? removing = stdin.readLineSync();

  if (contatos.containsKey(removing)) {  //Condição para confirma se essa chave existe, se existir vai remove-lo, se não retornara mensagem
    print(" $removing removido");
    contatos.remove(removing);
  } else {
    print("Este contato não existe na sua lista");
  }
}

//O dart oferece tambem para acessar valores ou chaves individuais
// for(name in listContact.keys) ou para valores for(number in listContact.values).
