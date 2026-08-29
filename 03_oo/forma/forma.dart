import 'enum.dart';

abstract class Forma {

  //declarando uma variavel de instancia
  tpForma tipoForma;

  //Construtor
  //Forma(tpForma varForma){
  //  this.tipoForma = varForma;
  //}
  
  Forma(this.tipoForma);

  //declarando um metodo abstrato
  double calculaArea();

  //declarando um metodo de instancia
  void imprimeForma(){
    //quando a variavel de instancia é nullable(?)
    //deve ser verificado se ela está nula
    //if(tipoForma != null){
    //  print("${tipoForma.name} com area de ${calculaArea()}");
    //}
    print("${tipoForma.name} com area de ${calculaArea().toStringAsFixed(2)}");
  }

}