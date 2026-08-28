import 'Forma.dart';
import 'enum.dart';

//Herança/Generalização
//Classe Quadrado herda os membros(Variaveis de instancia e metodos) de Forma
class Quadrado extends Forma{

  double lado;

  //Construtor da classe quadrado 
  //chamndo construtor pai
  Quadrado(this.lado) :super(tpForma.Quadrado);

  //sobrescrever o metodo da classe pai
  @override
  double calculaArea(){
    return lado*lado;
  }
}