
import 'Forma.dart';
import 'enum.dart';

class Triangulo extends Forma{

  double base;
  double altura;

  Triangulo(this.altura, this.base):super(tpForma.Triangulo);

  @override
  double calculaArea() {
    return (base * altura) /2;
  }
}