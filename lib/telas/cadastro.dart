import 'package:atguimaraes/design/cores.dart';
import 'package:atguimaraes/modelos/tipo_texto.dart';
import 'package:atguimaraes/widgets/botoes.dart';
import 'package:atguimaraes/widgets/inputs.dart';
import 'package:atguimaraes/widgets/logo.dart';
import 'package:atguimaraes/widgets/texto.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Cores.fundo,
      child: SingleChildScrollView(
        child: Padding(
          padding: width > 482
              ? EdgeInsets.fromLTRB((width - 450) / 2, 0, (width - 450) / 2, 0)
              : const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 56),
                child: Center(
                  child: Logo(tamanho: 56),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Texto(
                  "Cadastro",
                  tipoTexto: TipoTexto.h2,
                  cor: Cores.escuro2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 16),
                child: Input(
                  label: "Email",
                  tipoTeclado: TextInputType.emailAddress,
                  controller: _emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Input(
                  label: "Telefone",
                  tipoTeclado: TextInputType.phone,
                  controller: _telefoneController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Input(
                  label: "Senha",
                  controller: _senhaController,
                  esconderTexto: true,
                ),
              ),
              Botao(
                texto: "Criar Conta",
                onClick: () {},
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Texto(
                      "Já tem uma conta?",
                      tipoTexto: TipoTexto.primario,
                      cor: Cores.escuro3,
                    ),
                    const Padding(padding: EdgeInsets.only(right: 4)),
                    Link(
                      texto: "Faça login.",
                      onClick: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
