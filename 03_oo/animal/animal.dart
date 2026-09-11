import 'alimento.dart';
import 'enum.dart' ;

abstract class Animal {

  String nome;
  double peso;
  Alimento alimento;
  tpEspecie tipoEspecie;


  

  Animal(this.tipoEspecie, this.alimento, this.nome, this.peso);

  void fazerSom();

  void comer(){
    print("O Animal está comendo....");
  }
}