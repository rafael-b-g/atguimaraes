import 'package:atguimaraes/design/cores.dart';
import 'package:atguimaraes/design/sombras.dart';
import 'package:flutter/material.dart';

class Cartao extends StatelessWidget {
  const Cartao({
    Key? key,
    required this.child,
    this.height,
    this.width,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Cores.claro1,
        border: Border.all(
          color: Cores.escuro5,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(29),
        boxShadow: Sombras.sombra3,
      ),
      padding: const EdgeInsets.all(15),
      child: child,
    );
  }
}
