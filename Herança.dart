/* Este código exemplifica o uso de herança e polimorfismo.
  A SuperClasse Carro oferecerá atributos e métodos para as
  SubClasse CarroEletrico e CarroInjetado */

void main() {
  CarroEletrico carrinhoEletrico = CarroEletrico("Tesla XV", 23);
  carrinhoEletrico.abastecer();
  print(carrinhoEletrico.toString());

  CarroInjetado carrinhoinjetado = CarroInjetado("Corsa", 20);
  print(carrinhoinjetado.toString());
  carrinhoinjetado.abastecer();
}


//Classe Pai
abstract class Carro {
  String? modelo;

  Carro(this.modelo);

  void abastecer() {
    print("Abastecendo");
  }

  String toString() {
    return "Modelo = ${this.modelo}";
  }
}


//Subclasse herdando da Classe Pai
class CarroEletrico extends Carro {
  int bateria = 0;

  CarroEletrico(String modelo, this.bateria) : super(modelo); //Polimorfismo

  @override //override significa que o metodo sera alterado na classe filha
  void abastecer() {
    print("Abastecendo a eletrecidade");
    bateria = 100;
  }

  @override
  String toString() {
    return "Modelo = ${this.modelo}, Bateria = ${this.bateria}";
  }
}


class CarroInjetado extends Carro {
  int combustivel = 0;

  CarroInjetado(String modelo, this.combustivel) : super(modelo);

  void abastecer() {
    super.abastecer(); //Serve para chamar o metodo abastecer da classe pai
  }

  @override
  String toString() {
    return "Modelo = ${this.modelo}, Combustivel = ${this.combustivel}";
  }
}
