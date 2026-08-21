void main(List<String> args) {
  String nomeNonNullSafety;
  //não permite utilizar a variavel sem inicializa-lá
  //print(nomeNonNullSafety);

  nomeNonNullSafety = 'Valor';
  print(nomeNonNullSafety);

  String? nomeNullSafety;
  print(nomeNullSafety);
  //print("Variavel nomeNullSafety está vazia: ${nomeNullSafety.isEmpty}");   ERRO pois não tem o if
  if(nomeNullSafety != null)
    print("Variavel nomeNullSafety está vazia: ${nomeNullSafety.isEmpty}");

  // ?? é um operador ternario. Se a variavel estiver nula, executara a expressão do lado direito do operador ??
  String? nomeNullSafety2;
  print("Variavel nomeNullSafety está vazia: ${nomeNullSafety2?.isEmpty ?? "Não Atribuido"}");


  //  ! - Ignora as validações do null safety e você fica responsavel em garantir que a variavel não está nula
  String? nomeNullSafety1;
  //print("Variavel nomeNullSafety está vazia: ${nomeNullSafety1!.isEmpty}");

}