
import 'dart:convert';

import '../exceptions/localizacao-nao-encontrado-exception.dart';
import '../models/localizacao.dart';
import 'package:http/http.dart' as http;

class Localizacaoservice {

  Future<Localizacao> consultar(String CEP) async{
    final url = Uri.parse('http://cep.awesomeapi.com.br/json/$CEP');

    final resposta = await http.get(url);


    if(resposta.statusCode == 200){
      Map<String, dynamic> dados = jsonDecode(resposta.body);

      return Localizacao.deJson(dados);
    }

    throw LocalizacaoNaoEncontradaException();
  }
}