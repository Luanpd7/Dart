/*Uma das funções de um JSON é trocar dados entre (Sistema e API)*/

/*Para enviar dados para uma API,
posso criar e enviar de um JSON direto ou retirar de um Map e converter para um JSON
e para receber os dados de uma API, retornará como um JSON e para eu utilizar no código 
de forma eficaz devo converter para um objeto.*/
 
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




