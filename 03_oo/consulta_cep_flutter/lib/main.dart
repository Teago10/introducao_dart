import 'package:consulta_cep_flutter/views/endereco-view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ConsultaCepApp());
}

class ConsultaCepApp extends StatelessWidget{

  const ConsultaCepApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: EnderecoView(),
      // home: Scaffold(

      //   appBar: AppBar(
      //     title: const Text('Consulta CEP'),
      //   ),

      //   body: const Center(
      //     child: Text('Meu Primeiro app flutter'),
      //   ),
        

      // ),
    );

  }

}