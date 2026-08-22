import 'dart:ffi';

void main(List<String> args) {
  String nome = "thiago";

  int idade;
  idade = 19;

  double cotacaoDolar = 5.19;

  //Concatenação de string

  print("Nome: " + nome + " - idade: " + idade.toString());

  //Interpolação de String 
  print("nome: ${nome}  -  idade: ${idade.toString()}");

  //Fortemente tipada
  //não permite a atribuição de um valor a uma variavel, cujo tipo não comprometa o valor
  //idade = "doze";
  //idade = 1.5;

  //permite atribuir quando não perda de precisão. Um inteiro cabe dentro de um double
  cotacaoDolar = 5;

  //Não permite incluir um double dentro de um inteiro, pois poderia haver perda de precisão
  //idade = cotacaoDolar;

  //Nome de variavel não pode utilizar caracteres especiais, espaçosou palavras reservadas

  //Palavra reservada var para declarar uma variavel com tipo inferido
  var idadeInferido = 1;

  //aceita qualquer coisa
  dynamic idadeDynamic;
  idadeDynamic = 11;
  idadeDynamic = "doze";

  //object é uma classe basica de todos os objetos
  // significa que todos os tipos DART, excluindo os tipos primarios, são de tipo Object

  Object idadeObject;
  idadeObject = 15;
  idadeObject = "Quinze";
  idadeObject = new Int();


  print(idadeDynamic);
}