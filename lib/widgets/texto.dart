import 'package:atguimaraes/modelos/tipo_texto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  const Texto(
    this.texto, {
    Key? key,
    required this.tipoTexto,
    required this.cor,
  }) : super(key: key);

  final String texto;
  final TipoTexto tipoTexto;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    final double fontSize;
    final FontWeight fontWeight;

    switch (tipoTexto) {
      case TipoTexto.h1:
        fontSize = 32;
        fontWeight = FontWeight.w600;

        break;

      case TipoTexto.h2:
        fontSize = 24;
        fontWeight = FontWeight.w600;

        break;

      case TipoTexto.h3:
        fontSize = 20;
        fontWeight = FontWeight.w600;

        break;

      case TipoTexto.primario:
        fontSize = 16;
        fontWeight = FontWeight.normal;

        break;

      case TipoTexto.primarioSemibold:
        fontSize = 16;
        fontWeight = FontWeight.w500;

        break;

      case TipoTexto.primarioBold:
        fontSize = 16;
        fontWeight = FontWeight.bold;

        break;

      case TipoTexto.secundario:
        fontSize = 14;
        fontWeight = FontWeight.normal;

        break;

      case TipoTexto.secundarioSemibold:
        fontSize = 14;
        fontWeight = FontWeight.w600;

        break;

      case TipoTexto.terciario:
        fontSize = 12;
        fontWeight = FontWeight.normal;

        break;

      case TipoTexto.terciarioSemibold:
        fontSize = 12;
        fontWeight = FontWeight.w600;

        break;
    }
    return Text(
      texto,
      style: TextStyle(
        fontFamily: defaultTargetPlatform == TargetPlatform.macOS ||
                defaultTargetPlatform == TargetPlatform.iOS
            ? '-apple-system'
            : 'Helvetica',
        color: cor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
        height: 1.3,
      ),
    );
  }
}
