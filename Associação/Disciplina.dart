import 'Professor.dart';

class Disciplina {
  String nome;
  late Professor prof;

  Disciplina(this.nome);

  void adicionarProf(Professor prof) {
    this.prof = prof;
  }

  String toString() {
    return  "Mateira = $nome \n Professor = ${prof.nome} \n Idade = ${prof.idade} \n CPF = ${prof.cpf}";
  }
}
