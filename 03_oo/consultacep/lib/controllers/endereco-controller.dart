import 'dart:convert';

import 'package:consultacep/exceptions/api-invalida-exception.dart';
import 'package:consultacep/exceptions/cep-invalido-exception.dart';
import 'package:consultacep/exceptions/cep-nao-encontrado-exception.dart';
import 'package:consultacep/models/endereco.dart';
import 'package:consultacep/services/CEPService.dart';
import 'package:http/http.dart' as http;

class EnderecoController {

  CEPService cepService = CEPService();

  String validaCEP(String? cep) {
    //se o cep digitado dor nulo ou em branco, retorna uma exceção
    if (cep == null || cep.isEmpty) {
      throw CepInvalidoException();
    } else {
      //retirar todos os caracteres e letras, deixando apenas os números
      cep = cep.replaceAll(RegExp(r'[^0-9]'), '');

      // Se a quantidade de números for diferente de 8 retorna uma exceção
      // caso contrário retorna o CEP sem caracteres ou letras
      if (cep.length != 8) {
        throw CepInvalidoException();
      } else {
        return cep;
      }
    }
  }

  Future<Endereco> buscarEndereco(String cep) async{
    return cepService.consultar(cep);
  }

  
}
