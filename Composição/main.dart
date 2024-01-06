/* Este código consiste no relacionamento de composição, Quando uma instância de Cidade é criada,
 ela também cria um prefeito associado a ela. Se a cidade for destruída, o prefeito associado a ela também seria. */

import 'Cidade.dart';

void main() {
                               //Criando a diretamente a instância prefeito dentro da instância cidade
  Cidade cidade = Cidade("Blumenau", 300.000, "Mario", "Podemos");

                         //Método toString
  print(cidade.toString());
}
