import 'package:flutter/material.dart';

class Cores {
  Cores._();

  static const Color escuro1 = Color(0xFF1C1C1C);
  static const Color escuro2 = Color(0xFF3E3E3E);
  static const Color escuro3 = Color(0xFF606060);
  static const Color escuro4 = Color(0xFF828282);
  static const Color escuro5 = Color(0xFFA4A4A4);

  static const Color claro1 = Color(0xFFFFFFFF);
  static const Color claro2 = Color(0xFFDDDDDD);
  static const Color claro3 = Color(0xFFBBBBBB);
  static const Color claro4 = Color(0xFF999999);
  static const Color claro5 = Color(0xFF777777);

  static const Color fundo = Color(0xFFF5F5F5);
  static const Color destaque = Color(0xFF3084F1);
  static const Color erro = Color(0xFFEA3838);

  static const Gradient gradienteEscuro = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF626262),
      Color(0xFF000000),
    ],
  );
  static const Gradient gradienteClaro = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFE0E0E0),
    ],
  );
  static const Gradient gradienteDestaque = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF69B7FF),
      Color(0xFF007AEA),
    ],
  );
}
