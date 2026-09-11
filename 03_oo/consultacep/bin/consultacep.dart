import 'dart:io';

import 'package:consultacep/consultacep.dart' as consultacep;
import 'package:consultacep/controllers/endereco-controller.dart';
import 'package:consultacep/models/endereco.dart';
import 'package:consultacep/views/endereco-view.dart';

void main(List<String> arguments) async {
  
  final view = EnderecoView();
  view.iniciar();
  
}


