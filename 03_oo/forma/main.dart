import 'Forma.dart';
import 'circulo.dart';
import 'quadrado.dart';
import 'retangulo.dart';
import 'triangulo.dart';

void main(List<String> args) {
  Forma objQuadrado = Quadrado(15.0);
  objQuadrado.imprimeForma();


  Forma objRetangulo = Retangulo(4, 8);
  objRetangulo.imprimeForma();


  Forma objTriangulo = Triangulo(10.3, 4);
  objTriangulo.imprimeForma();

  Forma objCirculo = Circulo(4);
  objCirculo.imprimeForma();


  List<Forma> formas = [];
  formas.add(Quadrado(8.0));
  formas.add(Retangulo(4.0, 8.0));
  formas.add(Triangulo(10.3, 4.0));
  formas.add(Circulo(4.0));

  print("-------------------------------");
  formas.forEach((forma) => forma.imprimeForma());
}