class Prefeito {
  late String _nome;
  late String _partido;

  Prefeito(String nome, String partido) {
    _nome = nome;
    _partido = partido;
  }

  String get getNome => _nome;
  String get getPartido => _partido;

  set setNome(String nome) => _nome = nome;
  set setPartido(String partido) => _partido = partido;
}
