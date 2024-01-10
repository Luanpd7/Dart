/*Uma das funções de um JSON é trocar dados entre (Sistema e API)*/

/*Enviar dados criado direto com JSON ou converter um objeto para JSON e enviar para uma API
 e para receber os dados de uma API, eu recebo como json mas preciso converter para um objeto
 para fazer uma alguma operação no beck-end*/
 
import 'dart:convert';

void main() {
     //Objeto puro
  Map mapa = {"Usuario": "Luan", "Email": "luan13bnu@gmail.com", "Senha": 123};


     //Convertendo objeto para JSON
  var result = jsonEncode(mapa);
  print(result);


      //JSON Puro
  String json = '''
{
  "Usuario": "Luan",
  "Email": "luan13bnu@gmail.com",
  "Senha": 123
}
''';

  print(json);

      //Convertendo JSON para um Obj
  var obj = jsonDecode(json);
  print(obj);
}




