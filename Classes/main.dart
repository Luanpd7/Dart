import 'dart:io';

import 'Carro.dart';

void main() {

  Carro carro = Carro("Hiundai","Azera",2015);
  carro.setMarca = "Hyundai";

  print(carro.toString());

  Carro carro2 = Carro.vazio();

  print("Marca do Veículo:");
  String? marca = stdin.readLineSync();
  carro2.setMarca = marca!;

  print("Modelo:");
  String? modelo = stdin.readLineSync();
  carro2.setModelo = modelo!;

  print("Ano:");
  String? ano = stdin.readLineSync();
  carro2.setAno = int.parse(ano!);

  print(carro2.toString());
}



