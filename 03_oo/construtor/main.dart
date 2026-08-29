import 'padrao.dart' as padrao;
import 'com_parametro.dart' as com_parametro;

void main(List<String> args){


  print("Cirando uma instancia de uma classe com construtor padrão");
  final carroGTR = padrao.Carro();
  carroGTR.fabricante = "Nissan";
  carroGTR.modelo = "GTR";
  carroGTR.anoFabricacao = 2012;
  carroGTR.anoModelo = 2011;
  carroGTR.temABS = true;
  carroGTR.imprimeDados();



  print("Cirando uma instancia de uma classe com construtor com parâmetro");
  final carroGTR2 = com_parametro.Carro('Nissan', "GTR", 2012, 2011, true);
  carroGTR2.imprimeDados();
}