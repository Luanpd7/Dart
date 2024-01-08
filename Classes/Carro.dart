class Carro{
  late String _marca;
  late String _modelo;
  late int _ano;
  int anoAtual = 2024;

 Carro(this._marca,this._modelo,this._ano){}

  Carro.vazio(){}

  String get getMarca => _marca;
  String get getModelo => _modelo;
  int get getAno => _ano;
  int get getAnoAtual => (anoAtual - _ano);

  set setMarca(String marca) => _marca = marca;
  
  set setModelo(String modelo) => _modelo = modelo;
  
  set setAno(int ano) => _ano = ano;

  String toString() {
    return "Marca = ${this._marca}, Modelo = ${this._modelo}, ano = ${this._ano}, idade Veículo = ${this.getAnoAtual}";
  }

}