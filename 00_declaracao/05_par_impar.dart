import 'dart:io';

void main(List<String> args) {
  
  print("informe um numero: ");
  final numero = stdin.readLineSync();
  if(numero != null && int.tryParse(numero) != null){
    final numeroConvertido = int.tryParse(numero);

    print("Número ${numeroConvertido! % 2 == 0 ? "Par" : "Ímpar"}");

  }else{
    print("Número inteiro inválido");
  }

}