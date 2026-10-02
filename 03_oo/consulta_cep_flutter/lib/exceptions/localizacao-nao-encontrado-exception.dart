// Implements deve ser utilizado para criar uma herança de uma classe abstract interface
class LocalizacaoNaoEncontradaException implements Exception{

  @override
  String toString() {
    return "Não foi possivel encontrar a localização";
  }
}