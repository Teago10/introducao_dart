
import 'dart:io';
import 'package:consultalivro/controllers/livro-controller.dart';
import 'package:consultalivro/models/openlibraly.dart';

class LivroView {
  final livroController;

  LivroView() : livroController = LivroController() {}

  void iniciar() async{

    print("Informe o Livro (Formato xxxxx+xxx+x): ");

    String? busca = stdin.readLineSync();

    try {
      Livro livro = await livroController.buscarLivros( 
        livroController.validaBusca(busca)
      );

      print("Nome do Livro: ${livro.livro}");
      print("Autor: ${livro.autor.join(', ')}");
      print("Ano de Publicação: ${livro.anopub}");
      print("Quantidade de Edições: ${livro.quatidade}");
      print("Idioma: ${livro.idioma}");
    }
    catch (e) {
      print(e);
    }
  } 
}