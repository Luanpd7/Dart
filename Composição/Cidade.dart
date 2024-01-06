import 'Prefeito.dart';

class Cidade {
  String cidade;
  double populacao;
  late Prefeito prefeito;

  Cidade(this.cidade, this.populacao, String nome, String partido) {
    this.prefeito = Prefeito(nome, partido);
  }

  String toString() {
    return "Cidade = ${this.cidade}  População = ${this.populacao}" +
        "Prefeito = ${prefeito.nome} Partido = ${prefeito.partido}";
  }
}
