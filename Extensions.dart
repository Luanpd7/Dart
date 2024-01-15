/*usadas para adicionar métodos ou getters a tipos existentes sem modificar diretamente esses tipos. 
Elas são especialmente úteis quando você deseja adicionar funcionalidades a classes ou tipos que não estão sob seu controle,
 como classes de bibliotecas de terceiros */

import 'dart:io';


//Aqui se encontra extension para o tipo primitivos String.
extension StringExtensions on String {
  String concat(String c) =>
      c + " " + this; //método para concatenar a variavel com o parâmetro.

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}"; //método para pegar a primeira letra e deixar maiúscula.
  }
}


//Aqui se encontra extension para o tipo primitivos int.
extension IntExtensions on int {
  int get doubleValue =>
      this * 2; //método para dobrar o valor da variavel do tipo inteiro.
}

void main() {
  String values = enterPhases();
  int num = enterNumber();

  print("1 - Concatenar como Adm");
  print("2 - Concatenar como User");
  print("3 - Modificar primerira letra como maiuscula");
  print("4 - Dobrar valor do numero");
  String? opc = stdin.readLineSync();

  switch (opc) {
    case "1":
      print(values.concat("Adm"));
    case "2":
      print(values.concat("User"));
    case "3":
      print(values.capitalize());
    case "4":
      print(num.doubleValue);
  }
}

String enterPhases() {
  print("Digitar frase:");
  String? value = stdin.readLineSync();

  return value!;
}

int enterNumber() {
  print("Digitar número:");
  String? value = stdin.readLineSync();

  return int.parse(value!);
}
