/* Utilizando fila e seus métodos para um simples atendimento em forma de chegada 
onde o primeiro a entrar é o primeiro a sair, métodos que utilizei da flia foram 
o add para adicionar, fila.first para receber o proximo da fila e removeFirst para
remover o primeiro da fila. */

import 'dart:collection';
import 'dart:io';

void main() {
  Queue<String> fila = Queue();
  bool cond = true;

  while (cond == true) {
    print("1 - Adicionar Paciente Na Fila");
    print("2 - Chamar Paciente");
    String? opc = stdin.readLineSync();

    switch (opc) {
      case "1":
        fila = addPacient();
      case "2":
        toCallPacientes(fila);
      case "0":
        cond = false;
    }
  }
}

                            //Método para adicionar paciente na fila
Queue<String> addPacient() {
  Queue<String> fila = Queue();
  String? pacient;

  do {
    print("Adicionar Paciente");
    pacient = stdin.readLineSync();

    if (pacient != null) {      //Se paciente é diferente de nulo, ele é adicionado a lista
      fila.add(pacient);
    }
  } while (pacient != "0");
  return fila;
}

                                     //Método para chamar paciente em ordem por chegada
void toCallPacientes(Queue<String> fila) {
  if (fila.first != "0") {           //se o primeiro da lista for diferente de zero o bloco irá fazer uma ação
    String pacient = fila.first;
    print("$pacient foi chamado");
    fila.removeFirst();              //Após se chamado automaticamente o mesmo paciente será removido da fila
  } else {                            
    print("Não a mais paciente na fila");  //Após  não haver mais paciente na fila irá retornar uma mensagem
  }
}
