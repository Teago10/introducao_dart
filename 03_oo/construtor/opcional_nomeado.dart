class Carro extends Object{
  String fabricante;
  String modelo;
  int anoFabricacao;
  int anoModelo;
  bool temABS;

  Carro(
    
    {
      required this.fabricante,
      required this.modelo,
      this.anoFabricacao = 2012,
      this.anoModelo = 2011,
      this.temABS = true
    }
  );

  void imprimeDados(){
    print(retornaDados());
  }

  String retornaDados(){
    return 
    ''' 
      Fabricante: ${this.fabricante} \n
      modelo: ${this.modelo } \n
      Ano de Fabricacao: ${this.anoFabricacao} \n
      Ano de Modelo: ${this.anoModelo} \n
      Tem ABS: ${(this.temABS!)? "Sim":"Não"}
    ''';
  }

  @override
  String toString() {
    return retornaDados();
  }

}