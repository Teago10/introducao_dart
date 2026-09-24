import 'dart:convert';

import '../models/openlibraly.dart';
import 'package:http/http.dart' as http;

class LivroService {
  Future<Livro> consultar(String livro) async {
    final url = Uri.parse('https://openlibrary.org/search.json?q=${Uri.encodeComponent(livro)}');

    final resposta;
    try {
      resposta = await http.get(url);
    } catch (e) {
      throw Exception("Erro na url: ${e.toString()}");
    }

    if (resposta.statusCode == 200) {
      Map<String, dynamic> dados = jsonDecode(resposta.body);

      List livros = dados['docs'];

      if (livros.isEmpty) {
        throw Exception("Livro não encontrado.");
      }

      return Livro.deJson(livros[0]);
    } else {
      throw Exception("Erro na busca do livro: ${resposta.statusCode}");
    }
  }
}
