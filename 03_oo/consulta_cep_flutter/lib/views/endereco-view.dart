import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EnderecoView extends StatefulWidget{

  const EnderecoView({super.key});

  @override
  State<StatefulWidget> createState() => _EnderecoViewState();

}

class _EnderecoViewState extends State<EnderecoView>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta CEP'),

      ),

      body: Center(
        child: Text('Consulta de Endereço'),
      ),


    );
  }

}
