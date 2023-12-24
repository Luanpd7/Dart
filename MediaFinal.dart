/* Lógica onde o usuário irá digitar a matéria e as suas 3 notas,
então criei uma lógica onde a média das 3 notas for maior que 7, o aluno receberá a mensagem "Aprovado!"
se não, ele poderá digitar mais uma nota como recuperação e após isso mostrará se ele foi aprovado ou
reprovado e o sistema no final irá retornar qual é a maior nota e menor nota. */


import 'dart:io';

void main() {
  List<double> lista = mediaNotas();
  retornarMenorNota(lista);
  retornarMaiorNota(lista);
}

List<double> mediaNotas() {
  List<double> lista = [];
  print("Digite a materia: ");
  String? materia = stdin.readLineSync();

  print("Digite sua primeira nota: ");
  String? nota1 = stdin.readLineSync();

  print("Digite sua segunda nota: ");
  String? nota2 = stdin.readLineSync();

  print("Digite sua terceira nota: ");
  String? nota3 = stdin.readLineSync();

  double? receberNota1;
  double? receberNota2;
  double? receberNota3;

  if (nota1 != null && nota2 != null && nota3 != null) {
    receberNota1 = double.tryParse(nota1);
    receberNota2 = double.tryParse(nota2);
    receberNota3 = double.tryParse(nota3);

    if (receberNota2 != null && receberNota3 != null && receberNota1 != null) {
      double soma = (receberNota3 + receberNota2 + receberNota1) / 3;
      lista = [receberNota1, receberNota2, receberNota3];
      String media = soma.toStringAsFixed(1);
      if (soma >= 7) {
        print("Você foi aprovado na materia $materia \n com"
            "a sua média $media");
      } else if (soma <= 7) {
        print("Reprovado, média $media");

        print("Nota da recuperação: ");
        String? notaR = stdin.readLineSync();
        if (notaR != null) {
          double? receberNotaR = double.tryParse(notaR);

          if (receberNotaR != null) {
            soma =
                (receberNotaR + receberNota3 + receberNota1 + receberNota2) / 4;

            String media = soma.toString();
            lista.insert(3, receberNotaR);
            ;

            if (soma >= 7) {
              print("Voce foi aprovado! com a media $media");
            } else {
              print("você foi reprovado com a media $media");
            }
          }
        }
      }
    }
  }

  return lista;
}

void retornarMenorNota(List<double> lista) {
  double menorNota = lista[0];

  for (int i = 1; i < lista.length; i++) {
    if (lista[i] <= menorNota) {
      menorNota = lista[i];
    }
  }
  print("Essa foi a menor nota $menorNota");
}

void retornarMaiorNota(List<double> lista) {
  double maiorNota = lista[0];

  for (int i = 1; i < lista.length; i++) {
    if (lista[i] >= maiorNota) {
      maiorNota = lista[i];
    }
  }
  print("Essa foi a maior nota $maiorNota");
}
