// Implements deve ser utilizado para criar uma herança de uma classe abstract interface
class CepNaoEncontradoException implements Exception{

  @override
  String toString() {
    return "Cep não encontrado";
  }
}