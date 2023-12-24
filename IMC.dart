/* Lógica onde o usuário vai digitar seu nome, altura e peso
e o sistema irá fazer uma operação com a medida do seu corpo
que resulturá no IMC. */

import 'dart:io';

void main() {
  print("Nome do paciente: ");
  String? nome = stdin.readLineSync();

  print("Altura: ");
  String? altura = stdin.readLineSync();

  print("Peso: ");
  String? peso = stdin.readLineSync();

  double? receberAltura;
  double? receberPeso;

  if (altura != null && peso != null) {
    receberAltura = double.tryParse(altura);
    receberPeso = double.tryParse(peso);

    if (receberAltura != null && receberPeso != null) {
      double div = receberPeso / (receberAltura + receberAltura);

      String IMC = div.toStringAsFixed(2);

      print(
          "O nome do paciente é $nome a sua altura é $altura e seu peso é $peso \n "
          "seu é $IMC");
    }
  }
}
