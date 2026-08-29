import 'dart:math';

import 'Forma.dart';
import 'enum.dart';


class Circulo extends Forma{

  double raio;

  Circulo(this.raio):super(tpForma.Circulo);

  @override
  double calculaArea() {
    
    return pi * pow(raio, 2);
  }
}