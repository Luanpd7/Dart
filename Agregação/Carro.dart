

import 'Pecas.dart';

class Carro {
  String marca;
  String modelo;
  int ano;
  String placa;
  List<Pecas> pecas = [];


  Carro(this.marca, this.modelo, this.ano, this.placa);


  void adicionarPecas(Pecas peca) {
    pecas.add(peca);
  }


  void getCarro() {
    print(
        " Marca = ${this.marca}\n Modelo = ${this.modelo}\n Ano = ${this.ano}\n Placa = ${this.placa}");
    for (int i = 0; i < pecas.length; i++) {
      print(" Peças = ${pecas[i].nomePeca}");
    }
  }
}
