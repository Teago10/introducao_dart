import 'package:consulta_github/consulta_github.dart' as consulta_github;
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async{
  final url = Uri.parse('https://api.github.com/users/teago10');

  final resposta = await http.get(url);

  //Para pegar o nome dos repositorios do Git
  final url2 = Uri.parse('https://api.github.com/users/Teago10/repos');
  final resp = await http.get(url2);

  if(resposta.statusCode == 200){
    final Map<String, dynamic> dados = jsonDecode(resposta.body);
    final List<dynamic> infos = jsonDecode(resp.body);

    print("Nome do Usuario: ${dados['name']}");
    print("Login: ${dados['login']}");
    print("Bio: ${dados['bio']}");
    print("Localização: ${dados['location']}");
    print("Quantidade de seguidores: ${dados['followers']}");
    print("Quantidade de usuários seguidos: ${dados['following']}");
    print("Quantidade de repositórios públicos: ${dados['public_repos']} \n");

    var i = 1;
    for(var repo in infos){

      print("Nome dos Repositorio: ${i} ${repo['name']}");
      i++;
    }

  }else{
    print("Perfil não encontrado");
  }

}
