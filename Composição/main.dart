/* Este código consiste no relacionamento de composição onde no qual é a relação mais forte
pois se eu excluir a instância da cidade automaticamento excluirá a instância do prefeito */
import 'Cidade.dart';

void main() {
                                          //Instânciando Cidade e Prefeito na mesma instância
  Cidade cidade = Cidade("Blumenau", 300.000, "Mario", "Podemos");

  print(cidade.toString());
}
