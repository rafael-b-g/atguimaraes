import 'package:atguimaraes/design/sombras.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.tamanho}) : super(key: key);

  final double tamanho;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tamanho,
      width: tamanho,
      decoration: BoxDecoration(
          boxShadow: Sombras.sombra5,
          borderRadius: BorderRadius.circular(tamanho / 5.5),
          image: DecorationImage(
            image: Image.asset(
              "assets/logo.png",
            ).image,
          )),
    );
  }
}
