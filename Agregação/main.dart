/* Este código consiste em um Relacionamento de agregação entre as classes
   Carro e Peças onde uma lista de Peças instânciada será agregada a uma 
   instânciada da classe Carro*/

import 'Carro.dart';
import 'Pecas.dart';

void main() {

  /* Relação um objeto (o todo) com sua(as) parte(s).
 Parte só é criada quando o todo é criado */

                   //Criando instância Carro(O todo)
  Carro carro = Carro("Volkswagen", "Nivus", 2022, "MGK-123");

                  //Criando instância Peça(Partes)
  Pecas peca1 = Pecas("Retrovisor L.D");
  Pecas peca2 = Pecas("Banco D.E");
  Pecas peca3 = Pecas("Capô");
  Pecas peca4 = Pecas("Virabrequim");

                  //Atribuindo as instância da Classes Peças(Parte) a uma lista de peças na classe Carro
  carro.adicionarPecas(peca1);
  carro.adicionarPecas(peca2);
  carro.adicionarPecas(peca3);
  carro.adicionarPecas(peca4);

                 //Método para resultar (O todo) e suas (Partes);
  carro.getCarro();
}
