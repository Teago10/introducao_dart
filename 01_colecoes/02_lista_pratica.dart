import 'dart:convert';

void main(List<String> args) {
  print("inclua os dados do aluno no formato NOME | IDADE | CURSO | UF");
  final alunos = [];
  alunos.add(" JOAO | 25| DESENVOLVIMENTO DE SISTEMAS | SP");
  alunos.add(" MARIA | 19 | DESENVOLVIMENTO DE SISTEMAS | RJ");
  alunos.add(" JOSE | 50 | ADMINISTRACAO | ES");

  //print(alunos[0]);
  var aluno = alunos[0].toString().split("|");
  //print("Nome:${aluno[0]}   Idade:${aluno[1]}   Curso:${aluno[2]}   UF:${aluno[3]}");

  //Utilização do forEach para percorrer a lista de alunos
  
  alunos.forEach((aluno) {
    var dados = aluno.toString().split("|");
    print("Nome:${dados[0]}   Idade:${dados[1]}   Curso:${dados[2]}   UF:${dados[3]}");
  });

  //2° adicionar um aluno abaixo no final da lista, com os dados: "ANA | 30 | REDES DE COMPUTADORES | MG"
  alunos.add("ANA | 30 | REDES DE COMPUTADORES | MG");
  print(alunos);

  //3° adicionar um aluno abaixo na 2° posição da lista, com os dados: "PEDRO | 40 | REDES DE COMPUTADORES | MG"

  alunos.insert(2, "PEDRO | 40 | REDES DE COMPUTADORES | MG");
  print(alunos);

  //4° remover a aluna MARIA da lista
  alunos.remove(" MARIA | 19 | DESENVOLVIMENTO DE SISTEMAS | RJ");
  print("REMOVENDO MARIA ${alunos}");

  //5° remover o aluno da 1° posição da lista
  alunos.remove(alunos[0]);
  print("REMOVENDO ALUNO DA 1° ${alunos}");
}