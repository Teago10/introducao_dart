
import 'Forma.dart';
import 'enum.dart';

class Retangulo extends Forma{

  double base;
  double altura;

  Retangulo(this.altura, this.base) :super(tpForma.Retangulo);

  @override
  double calculaArea(){
    return base * altura;
  }
  
}