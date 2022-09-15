import 'package:flutter/material.dart';
import '../design/sombras.dart';
import '../design/cores.dart';
import '../modelos/tipo_botao.dart';
import '../modelos/tipo_texto.dart';
import 'texto.dart';

class Botao extends StatelessWidget {
  const Botao({
    Key? key,
    required this.texto,
    required this.onClick,
    this.tipoBotao = TipoBotao.primario,
    this.ativado = true,
  }) : super(key: key);

  final String texto;
  final void Function() onClick;
  final TipoBotao tipoBotao;
  final bool ativado;

  @override
  Widget build(BuildContext context) {
    final Widget botaoPrimario = Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        gradient: ativado ? Cores.gradienteEscuro : null,
        color: ativado ? null : Cores.escuro5,
        boxShadow: ativado ? Sombras.sombra3 : Sombras.sombra5,
        borderRadius: const BorderRadius.all(Radius.circular(13)),
      ),
      child: Texto(
        texto,
        tipoTexto: TipoTexto.primarioSemibold,
        cor: ativado ? Cores.claro1 : Cores.claro2,
      ),
    );

    final Widget botaoSecundario = Container(
      padding: const EdgeInsets.fromLTRB(14, 6, 14, 6),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        border: Border.all(
          color: ativado ? Cores.escuro2 : Cores.escuro5,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: Texto(
        texto,
        tipoTexto: TipoTexto.primarioSemibold,
        cor: ativado ? Cores.escuro2 : Cores.escuro5,
      ),
    );

    return MouseRegion(
      cursor: ativado ? SystemMouseCursors.click : SystemMouseCursors.forbidden,
      child: GestureDetector(
        onTap: ativado ? onClick : null,
        child:
            tipoBotao == TipoBotao.primario ? botaoPrimario : botaoSecundario,
      ),
    );
  }
}

class Link extends StatefulWidget {
  const Link({
    Key? key,
    required this.texto,
    required this.onClick,
  }) : super(key: key);

  final String texto;
  final void Function() onClick;

  @override
  State<Link> createState() => _LinkState();
}

class _LinkState extends State<Link> {
  bool _sublinhado = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _sublinhado = true;
        });
      },
      onExit: (_) {
        setState(() {
          _sublinhado = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onClick,
        child: Texto(
          widget.texto,
          tipoTexto: TipoTexto.primarioBold,
          cor: Cores.destaque,
          sublinhado: _sublinhado,
        ),
      ),
    );
  }
}
