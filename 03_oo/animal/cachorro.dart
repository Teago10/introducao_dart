import 'alimento.dart';
import 'animal.dart';
import 'enum.dart';

class Cachorro extends Animal{

  int fofura;

  Cachorro(this.fofura, double peso, String nome, Alimento alimento):super(tpEspecie.Mamifero);

  @override
  void fazerSom() {
    print('Au au!');
  }
}