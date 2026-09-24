

import 'package:consultalivro/models/openlibraly.dart';
import 'package:consultalivro/services/libralyService.dart';
import 'dart:convert'; 
import 'package:http/http.dart' as http;


class LivroController {
  LivroService livroService = LivroService();

  String validaBusca(String? busca) {
    
    if (busca == null || busca.isEmpty) {
      throw 'Livro Inválido';
    } else {
      // Retorna a busca normalmente
      return busca;
    }
  }

  Future<Livro> buscarLivros(String busca) async {
    return livroService.consultar(busca);
  }
}

