import 'package:flutter/material.dart';

class Sombras {
  Sombras._();

  static const List<BoxShadow> sombra1 = [
    BoxShadow(
      color: Color.fromRGBO(28, 28, 28, 0.25),
      offset: Offset(0, 7),
      blurRadius: 25,
    )
  ];
  static const List<BoxShadow> sombra2 = [
    BoxShadow(
      color: Color.fromRGBO(28, 28, 28, 0.20),
      offset: Offset(0, 5),
      blurRadius: 20,
    )
  ];
  static const List<BoxShadow> sombra3 = [
    BoxShadow(
      color: Color.fromRGBO(28, 28, 28, 0.15),
      offset: Offset(0, 5),
      blurRadius: 16,
    )
  ];
  static const List<BoxShadow> sombra4 = [
    BoxShadow(
      color: Color.fromRGBO(28, 28, 28, 0.13),
      offset: Offset(0, 2),
      blurRadius: 12,
    )
  ];
  static const List<BoxShadow> sombra5 = [
    BoxShadow(
      color: Color.fromRGBO(28, 28, 28, 0.13),
      offset: Offset(1, 2),
      blurRadius: 4,
    )
  ];
}
