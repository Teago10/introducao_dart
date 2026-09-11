class CepInvalidoException implements Exception{

  // final String mensagem;
  // CepInvalidoException(this.mensagem);

  @override
  String toString() {
    return "CEP inválido, deve possuir 8 números.";
  }
}