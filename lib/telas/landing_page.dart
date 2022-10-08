import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:atguimaraes/design/cores.dart';
import 'package:atguimaraes/modelos/tipo_botao.dart';
import 'package:atguimaraes/modelos/tipo_texto.dart';
import 'package:atguimaraes/widgets/botoes.dart';
import 'package:atguimaraes/widgets/cartao.dart';
import 'package:atguimaraes/widgets/logo.dart';
import 'package:atguimaraes/widgets/texto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final Image ferramenta = Image.network(
      "https://i.imgur.com/OqZz4Vq.png",
      height: size.height,
    );

    return Container(
      color: Cores.fundo,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CustomPaint(
                  painter: FundoPainter(screenHeight: size.height),
                  size: Size(size.width, size.height + size.width * 0.085),
                ),
                SizedBox(
                  height: size.height + size.width * 0.085,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ferramenta,
                  ),
                ),
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(bottom: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(24, 2, 8, 0),
                              child: Logo(tamanho: 40),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Texto(
                                  "Assitência Técnica Guimarães",
                                  tipoTexto: TipoTexto.h3,
                                  cor: Cores.escuro2,
                                ),
                                Texto(
                                  "Assitência técnica autorizada Milwaukee",
                                  tipoTexto: TipoTexto.secundario,
                                  cor: Cores.escuro2,
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Botao(
                              texto: "Entrar",
                              onClick: () {},
                              tipoBotao: TipoBotao.secundario,
                            ),
                            const Padding(padding: EdgeInsets.only(right: 16)),
                            Botao(
                              texto: "Cadastrar",
                              onClick: () {},
                              tipoBotao: TipoBotao.primario,
                            ),
                            const Padding(padding: EdgeInsets.only(right: 24)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(64, size.height * 0.41 - 50, 0, 0),
                  child: const TextoDeChamada(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 88, 0, 8),
              child: Container(
                height: 2,
                width: 75,
                decoration: BoxDecoration(
                    color: Cores.escuro4,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            const Texto(
              "Como funciona?",
              tipoTexto: TipoTexto.h2,
              cor: Cores.escuro2,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 56)),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 27.5),
                      height: 493,
                      width: 2,
                      decoration: BoxDecoration(
                          color: Cores.escuro4,
                          borderRadius: BorderRadius.circular(2)),
                    ),
                    // Botao(
                    //   texto: "Criar Conta",
                    //   onClick: () {},
                    // )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Etapa(
                      "Abra um pedido de manutenção",
                      "Após criar sua conta, inicie o processo de manutencão sem nem mesmo precisar sair do site.",
                      icone: Image.network("https://i.imgur.com/9Kd4r6c.png"),
                      size: size,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 56)),
                    Etapa(
                      "Marque um horário para levar sua máquina",
                      "Escolha quando deseja deixar sua ferramenta na nossa loja.",
                      icone: Image.network("https://i.imgur.com/mc0n0Fs.png"),
                      size: size,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 56)),
                    Etapa(
                      "Nós fazemos a manutenção",
                      "E te mantemos atualizado sobre o status do conserto.",
                      icone: Image.network("https://i.imgur.com/lcE6fdx.png"),
                      size: size,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 56)),
                    Etapa(
                      "Marque um horário para buscar sua máquina",
                      "Escolha quando deseja retirar sua ferramenta na nossa loja. E pronto!",
                      icone: Image.network("https://i.imgur.com/9opQ0No.png"),
                      size: size,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 112, 0, 8),
              child: Container(
                height: 2,
                width: 75,
                decoration: BoxDecoration(
                    color: Cores.escuro4,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            const Texto(
              "Localização",
              tipoTexto: TipoTexto.h2,
              cor: Cores.escuro2,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 56)),
            Cartao(
              width: size.width * 0.77,
              child: Column(
                children: [
                  Container(
                    height: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              Image.network("https://i.imgur.com/pP0Chn4.jpg")
                                  .image,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          width: 1,
                          color: Cores.escuro5,
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Texto(
                        "<endereço aqui>",
                        tipoTexto: TipoTexto.primario,
                        cor: Cores.escuro3,
                      ),
                      Botao(
                        texto: "Abrir Mapa",
                        onClick: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 112, 0, 8),
              child: Container(
                height: 2,
                width: 75,
                decoration: BoxDecoration(
                    color: Cores.escuro4,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            const Texto(
              "Contato",
              tipoTexto: TipoTexto.h2,
              cor: Cores.escuro2,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 56)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cartao(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Texto(
                        "Telefone",
                        tipoTexto: TipoTexto.h3,
                        cor: Cores.escuro2,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      const Texto(
                        "(61) 98142-0070",
                        tipoTexto: TipoTexto.primarioSemibold,
                        cor: Cores.escuro3,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 24)),
                      Botao(
                        texto: "Abrir no WhatsApp",
                        onClick: () {},
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 64)),
                Cartao(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Texto(
                        "Email",
                        tipoTexto: TipoTexto.h3,
                        cor: Cores.escuro2,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      const Texto(
                        "contato@atguimaraes.com.br",
                        tipoTexto: TipoTexto.primarioSemibold,
                        cor: Cores.escuro3,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 24)),
                      Botao(
                        texto: "Enviar Email",
                        onClick: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 88)),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomPaint(
                  painter: RodapePainter(),
                  size: Size(
                    size.width,
                    size.width * 0.12,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Texto(
                    "Copyright © 2022 Assitência Técnica Guimarães",
                    tipoTexto: TipoTexto.terciario,
                    cor: Cores.claro2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextoDeChamada extends StatelessWidget {
  const TextoDeChamada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: defaultTargetPlatform == TargetPlatform.macOS ||
                defaultTargetPlatform == TargetPlatform.iOS
            ? '-apple-system'
            : 'Helvetica',
        color: Cores.escuro2,
        fontSize: 50,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.none,
        height: 1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 50)),
              const Text(
                "Nós consertamos sua ",
              ),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 62.4,
                    width: 2,
                    decoration: BoxDecoration(
                        color: Cores.escuro2,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 8)),
                  const Texto(
                    "Assitência técnica especializada e autorizada Milwaukee.\n"
                    "Serviço de qualidade, peças originais.\n"
                    "Dentro e fora de garantia!",
                    tipoTexto: TipoTexto.primario,
                    cor: Cores.escuro2,
                  ),
                ],
              ),
            ],
          ),
          DefaultTextStyle(
            style: TextStyle(
              fontFamily: defaultTargetPlatform == TargetPlatform.macOS ||
                      defaultTargetPlatform == TargetPlatform.iOS
                  ? '-apple-system'
                  : 'Helvetica',
              color: Cores.destaque,
              fontSize: 50,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
              height: 1,
            ),
            child: SizedBox(
              height: 150,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText('Parafusadeira'),
                  RotateAnimatedText('Furadeira'),
                  RotateAnimatedText('Retífica'),
                  RotateAnimatedText('Serra'),
                  RotateAnimatedText('Ferramenta'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FundoPainter extends CustomPainter {
  FundoPainter({required this.screenHeight});

  final double screenHeight;

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    Paint paint1 = Paint()
      ..shader = ui.Gradient.linear(
        Offset.zero,
        Offset(width, height),
        [
          Cores.claro1,
          const Color(0xffD4D4D4),
        ],
      )
      ..style = PaintingStyle.fill;

    Path path1 = Path();

    path1.lineTo(0, height);
    path1.lineTo(width, screenHeight);
    path1.lineTo(width, 0);
    path1.lineTo(0, 0);

    canvas.drawPath(path1, paint1);

    Paint paint2 = Paint()
      ..shader = Cores.gradienteEscuro.createShader(Rect.fromLTRB(
        width * 0.6,
        screenHeight * 0.13,
        width,
        screenHeight + (width * 0.085) * 0.4,
      ))
      ..style = PaintingStyle.fill;

    Path path2 = Path();

    path2.moveTo(width * 0.6, screenHeight + (width * 0.085) * 0.4);
    path2.lineTo(width, screenHeight);
    path2.lineTo(width, screenHeight * 0.13);

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(FundoPainter oldDelegate) => false;
}

class RodapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    Paint paint = Paint()
      ..shader = Cores.gradienteEscuro.createShader(Rect.fromLTRB(
        0,
        0,
        width,
        height,
      ))
      ..style = PaintingStyle.fill;

    Path path = Path();

    path.moveTo(0, height * 0.75);
    path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo(width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(RodapePainter oldDelegate) => false;
}

class Etapa extends StatelessWidget {
  const Etapa(
    this.titulo,
    this.corpo, {
    Key? key,
    required this.icone,
    required this.size,
  }) : super(key: key);

  final String titulo;
  final String corpo;
  final Widget icone;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width / 2 - 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [icone],
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 40)),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Cores.escuro4,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 16)),
        SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texto(
                titulo,
                tipoTexto: TipoTexto.primarioBold,
                cor: Cores.escuro2,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2)),
              Texto(
                corpo,
                tipoTexto: TipoTexto.primario,
                cor: Cores.escuro3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
