import 'package:consulta_cep_flutter/exceptions/cep-invalido-exception.dart';

import '../models/localizacao.dart';
import '../exceptions/api-invalida-exception.dart';
import '../exceptions/cep-nao-encontrado-exception.dart';

import '../controllers/endereco-controller.dart';
import 'package:consulta_cep_flutter/main.dart';
import '../models/endereco.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EnderecoView extends StatefulWidget {
  const EnderecoView({super.key});

  @override
  State<StatefulWidget> createState() => _EnderecoViewState();
}

class _EnderecoViewState extends State<EnderecoView> {
  final TextEditingController cepController = TextEditingController();

  final EnderecoController enderecoController = EnderecoController();

  Endereco? endereco;

  Localizacao? localizacao;

  String? mensagemErro;

  bool carregando = false;

  bool localizacaoIndisponivel = false;

  void limpar() {
    setState(() {
      cepController.clear();
      endereco = null;
      mensagemErro = null;
    });
  }

  Future<void> consultarCEP() async {
    try {
      setState(() {
        carregando = true;
        mensagemErro = null;
        this.endereco = null;
        localizacao = null;
        localizacaoIndisponivel = false;
      });

      String cep = enderecoController.validaCEP(cepController.text);

      final endereco = await enderecoController.buscarEndereco(cep);

      setState(() {
        this.endereco = endereco;
      });

      try {
        final localizacao = await enderecoController.buscarlocalizacao(cep);

        setState(() {
          this.localizacao = localizacao;
        });
      } catch (e) {
        setState(() {
          localizacaoIndisponivel = true;
        });
      }
    } on CepInvalidoException catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } on CepNaoEncontradoException catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } on ApiInvalidaException catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } finally {
      carregando = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Consulta CEP',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 4,
        shadowColor: Colors.black,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Consultar endereço',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              'Digite um CEP para encontrar o endereço correspondente.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 95, 95, 95),
              ),
            ),

            const SizedBox(height: 24),

            TextField(
              controller: cepController,
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                labelText: 'CEP',
                hintText: '00000-000',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            if (endereco != null) ...[
              const SizedBox(height: 24),

              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Endereço encontrado',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text('Logradouro: ${endereco!.logradouro}'),
                      const SizedBox(height: 8),

                      Text('Bairro: ${endereco!.bairro}'),

                      const SizedBox(height: 8),

                      Text('Cidade: ${endereco!.localidade}'),

                      const SizedBox(height: 8),

                      Text('UF: ${endereco!.uf}'),
                    ],
                  ),
                ),
              ),

              if (localizacaoIndisponivel)
                Text(
                  'Localização indisponivel',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
            ],

            const SizedBox(height: 36),

            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 3),
                      onPressed: carregando ? null : consultarCEP,
                      child: const Text('Consultar CEP'),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1.2),
                      ),
                      onPressed: limpar,
                      child: const Text('Limpar'),
                    ),
                  ),
                ),
              ],
            ),

            if (mensagemErro != null) ...[
              const SizedBox(height: 24),

              Text(mensagemErro!, style: const TextStyle(color: Colors.red)),
            ],

            if (carregando) ...[
              const SizedBox(height: 24),

              const Center(child: CircularProgressIndicator()),
            ],
          ],
        ),
      ),
    );
  }
}
