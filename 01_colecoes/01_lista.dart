void main(List<String> args) {
  
  List<int> listaNumeros = [1,2,3];

  List<String> listaTextos = ["Fulano","Ciclano","Beutrano"];

  //Tipos de listas por inferencias
  var listaNumerosInferencia = [1,2,3];
  var listaTextosInferencia = ["Fulano","Ciclano","Beutrano"];

  //Lista vazia
  List<int> listaSemNumeros = [];

  var listaSemNumerosInferencia = <int>[];
  var listaSemTextosInferencia = <String>[];

  //NullSafety

  //tem que iniciar a Lista e os itens não podem ser nulos
  List<String> nome;
  //apresenta  erro, pois a lista não está inicializada
  //print(nome.length);

  nome = [];
  print(nome.length);

  //apresenta  erro, pois a lista não está permite itens nulos
  //nome = ["Fulano", null];

  //Não precisa iniciar a Lista, porque os itens não podem ser nulos
  List<String>? listaSemIniciar;
  listaSemIniciar = null;
  
  if(listaSemIniciar != null)
    print(listaSemIniciar.length);
  

  //Precisa iniciar a Lista, porque os itens podem ser nulos
  List<String?> listaComItensNulos;

  // apresentar porque a lista deve ser inicializada
  //listaComItensNulos = null;

  listaComItensNulos = ["Fulano", null];

  //Não precisa iniciar a Lista, porque os itens podem ser nulos
  List<String?>? listaComItensNulosSemIniciar;
  listaComItensNulosSemIniciar = null;
  listaComItensNulosSemIniciar = ["Fulano", null];

  //declaração por inferência
  var listaComItensNulosInferencia = <String?>[null];

  final numeros = [1,2,3,4];
  print(numeros);

  //metodo add adiciona um item na lista
  numeros.add(5);
  print(numeros);

  final nomes = ["Fulano", "Ciclano", "Beltrano"];
  nomes.add("João");
  print(nomes);
  print("1º item da lista: ${nomes[0]}");
  print("2º item da lista: ${nomes[1]}");
  print("3º item da lista: ${nomes[2]}");

  //metodo insert adiciona um item na lista em uma posição especifica
  nomes.insert(0, "Maria");
  print(nomes);

  //metodo insertAll adiciona uma lista de itens na lista em uma posição especifica
  final nomesNovos = ["José", "Ana"];
  nomes.addAll(nomesNovos);
  print(nomes);

  //metodo remove: remove um item da lista
  nomes.remove("João");
  print(nomes);

  


}