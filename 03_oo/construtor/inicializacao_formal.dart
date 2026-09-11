class Carro{
  String fabricante;
  String modelo;
  int anoFabricacao;
  int anoModelo;
  bool temABS;

  Carro(
    this.fabricante,
    this.modelo,
    this.anoFabricacao,
    this.anoModelo,
    this.temABS,
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

}