/* Este código consiste em um exemplo simples de um relacionamento de associação
entre as classes Disciplina e Professor, onde define que uma disciplina está 
associada a um professor. */

import 'Disciplina.dart';
import 'Professor.dart';

void main() {
                                                //Instância Professor e Disciplina criada
  Professor prof1 = Professor("Alan", 43, "11223323-32");
  Disciplina disciplina1 = Disciplina("Programação orientada a objetos");

                              //Associando a instância prof a instância disciplina1;
  disciplina1.adicionarProf(prof1);

  print(disciplina1.toString());
}
