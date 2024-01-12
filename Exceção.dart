/* Este simples sistema de login onde estou usando try/catch e no bloco try utilizo o método realizarLogin() 
se ocorrer uma exceção, no bloco catch vai printar o erro da exceção e solicita o email e senha novamente
essas dados entraram com parâmetros opcional dentro do método realizarLogin() para uma validação. */

/* try: é o bloco para envolver a suspeita que um erro/exceção possa ocorrer; */

/* catch: é usado para capturar e lidar com exceções que estão dentro do try, 
se uma exceção ocorre no bloco try ele é passado para o bloco catch; */

/* throw: serve para o programador criar uma exceção. */

import 'dart:io';

void main() {
  try {
    if (realizarLogin() == true) {
      print("Permitido");
    } else {
      throw Exception("Email e senha incorretos");
    }
  } catch (e) {
    print("erro: $e");

    print("Insira seu Emai-l novamente:");
    String? email = stdin.readLineSync();

    print("Insira sua Senha");
    String? senha = stdin.readLineSync();

    realizarLogin(ParEmail: email, ParSenha: senha);
  }
}

bool realizarLogin({String? ParEmail, String? ParSenha}) {
  String emailCorreto = "luan@gmail.com";
  String senhaCorreta = "L123";
  String? email;
  String? senha;
  if (ParEmail == null && senha == ParSenha) {
    print("Insira seu Emai-l:");
    email = stdin.readLineSync();

    print("Insira sua Senha");
    senha = stdin.readLineSync();
  }

  if ((email == emailCorreto && senha == senhaCorreta) ||
      (ParEmail == emailCorreto && ParSenha == senhaCorreta)) {
    print("Acesso permitido!!");
    return true;
  } else {
    return false;
  }
}
