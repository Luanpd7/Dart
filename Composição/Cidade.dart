import 'Prefeito.dart';

class Cidade {
  String? _cidade;
  double? _populacao;
  late Prefeito prefeito;

  Cidade(String cidade, double populacao, String nome, String partido) {
    _cidade = cidade;
    _populacao = populacao;
    this.prefeito = Prefeito(nome, partido);
  }

  String get getCidade => _cidade!;
  double get getPopulacao => _populacao!;

  set setCidade(String cidade) => _cidade = cidade;
  set setPopulacao(double populacao) => _populacao = populacao;

  @override
  String toString() {
    return "Nome da Cidade = $getCidade \n População = $getPopulacao \n" +
        "Nome do Prefeito = ${prefeito.getNome} e Partido ${prefeito.getPartido}";
  }
}
