void main(List<String> args) {
  
  var nomeCurso = "desemvolvimento Dart";
  print("Curso: $nomeCurso");

  //modificador final
  //uma final declarada com final pode ser atribuida apenas uma vez e seu valor não pode ser alterado
  //posso declarar em um ponto do sistema e atribuir o valor em outro
  final nomeCursoFinal = "fundamentos do Dart";
  print(nomeCursoFinal);

  //Modificador cons?
  //uma variavel declarada como pode ser atribuido apenas umas vez
  //seu valor não pode ser alterado 
  const nomeConstCursos = "fundamentos do Dart";
  print(nomeConstCursos);
  //const deve ser declarada e atribuida

}