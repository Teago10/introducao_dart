void main(List<String> args) {

  //Set não permite valores duplicados
  Set<int> numeros = {1,2,3,4};
  numeros.forEach(print);

  //metodo List.toSet() transforma uma lista em um Set
  var numerosDuplicados = [1,2,3,4,4,5,5,6,7,8,9,9];
  numerosDuplicados.forEach(print);

  print("\nLista convertida em Set");
  var numerosSemDuplicados = numerosDuplicados.toSet();
  numerosSemDuplicados.forEach(print);

  var conjunto1 = {1,2,3,4,5,6};
  var conjunto2 = {1,2,3,8};

  //metodo diference() retorna os elementos que estão no conjunto1 e não estão no conjunto2
  print("\nDiference");
  print(conjunto1.difference(conjunto2));
  print(conjunto2.difference(conjunto1));

  //metodo union() retorna os elementos que estão no conjunto1 e no conjunto2
  print("\nUnion");
  print(conjunto1.union(conjunto2));

  //metodo intersection() retorna os elementos que estão no conjunto1 e no conjunto2
  print("\nIntersection");
  print(conjunto1.intersection(conjunto2));


  //lookup() retorna true se o elemento estiver no conjunto, caso contrario retorna false
  print("\nLookup");

  var nomes = {"Fulano", "Ciclano", "Beltrano"};
  print(nomes.lookup("Fulano"));
  print(nomes.lookup("João"));

  //retorna um item atraves do indice, mas não é possivel alterar o valor do item
  print("\nElemento atraves do indice");  
  print("Segundo item do SET:  ${nomes.elementAt(1)}");
}