class Livro {
  String livro;      // nome Livro
  List autor;      // nome Autor
  String anopub;     // ano de publicação
  String quatidade;  // quantidade de publicações
  String idioma;     // idioma do livro

  Livro(
    {
      required this.livro,
      required this.autor,
      required this.anopub,
      required this.quatidade,
      required this.idioma

    }
  );

  Map<String, dynamic> paraJson(){
    return {
      'livro': this.livro,
      'autor': this.autor,
      'anopub': this.anopub,
      'quantidade': this.quatidade,
      'idioma': this.idioma
    };
  }

  factory Livro.deJson(Map<String,dynamic> json){
    return Livro(
      livro: json['title'] ?? 'Sem título',
      autor: json['author_name'] ?? [],
      anopub: json['first_publish_year']?.toString() ?? 'Não informado',
      quatidade: json['edition_count']?.toString() ?? 'Não informado',
      idioma: json['language'] != null
          ? json['language'].join(', ')
          : 'Não informado',
      );
  }

}