void main(List<String> args) {
  
  final estudante = <String,String>{

    'nome': "Fulano de Tal",
    'Curso': "Desenvolvimento de sistemas"
  };

  print(estudante);

  final escola = <String,Object>{
    'nome': "Senac Marília",
    'cursos':[
      {
        'nome':"Técnico em desenvolvimento de sistemas",
        'Descricao':"Implementação de sistemas para web, desktop e mobile"
      },
      {
        'nome':"Técnico em Segurança do Trabalho",
        'Descricao':"Gerenciamento de riscos e prevenção de acidentes"
      }
    ]
  };
  print(escola);
  print("Escola: ${escola['nome']}");
  print("Cursos");
  for(var curso in escola['cursos'] as List) {
    print("- ${curso['nome']} - ${curso['Descricao']}");
  }
}