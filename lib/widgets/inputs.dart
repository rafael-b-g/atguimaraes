import 'package:atguimaraes/design/cores.dart';
import 'package:atguimaraes/modelos/tipo_texto.dart';
import 'package:atguimaraes/widgets/texto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({
    Key? key,
    required this.label,
    required this.controller,
    this.tipoTeclado = TextInputType.text,
    this.esconderTexto = false,
    this.condicoes = const {},
  }) : super(key: key);

  final String label;
  final TextEditingController controller;
  final TextInputType tipoTeclado;
  final bool esconderTexto;
  final Map<bool Function(), String> condicoes;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final FocusNode _focus = FocusNode();
  bool _selecionado = false;
  String? _mensagemErro;
  bool _podeVerificarCondicoes = false;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    widget.controller.dispose();
    super.dispose();
  }

  void _verificarCondicoes() {
    if (widget.condicoes.isNotEmpty && _podeVerificarCondicoes) {
      _mensagemErro = null;
      for (var entry in widget.condicoes.entries) {
        if (!entry.key()) {
          _mensagemErro = entry.value;
          break;
        }
      }
      setState(() {
        _mensagemErro = _mensagemErro;
      });
    }
  }

  void _onFocusChange() {
    if (!_focus.hasFocus &&
        widget.condicoes.isNotEmpty &&
        !_podeVerificarCondicoes) {
      _podeVerificarCondicoes = true;
      _verificarCondicoes();
    }

    setState(() {
      _selecionado = _focus.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texto(
          widget.label,
          tipoTexto: TipoTexto.secundario,
          cor: _mensagemErro == null ? Cores.escuro3 : Cores.erro,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(13)),
              border: Border.all(
                color: _mensagemErro == null ? Cores.escuro4 : Cores.erro,
                width: _selecionado || _mensagemErro != null ? 2 : 1,
              )),
          padding:
              EdgeInsets.all(_selecionado || _mensagemErro != null ? 6 : 7),
          child: Material(
            color: Colors.transparent,
            child: TextField(
              controller: widget.controller,
              focusNode: _focus,
              onChanged: (texto) {
                _verificarCondicoes();
              },
              keyboardType: widget.tipoTeclado,
              obscureText: widget.esconderTexto,
              cursorColor: Cores.escuro2,
              cursorWidth: 1,
              decoration: null,
              style: TextStyle(
                fontFamily: defaultTargetPlatform == TargetPlatform.macOS ||
                        defaultTargetPlatform == TargetPlatform.iOS
                    ? '-apple-system'
                    : 'Helvetica',
                color: _mensagemErro == null ? Cores.escuro2 : Cores.erro,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                height: 1.3,
              ),
              maxLines: widget.esconderTexto ? 1 : null,
            ),
          ),
        ),
        _mensagemErro == null
            ? const SizedBox()
            : Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Texto(
                  _mensagemErro.toString(),
                  tipoTexto: TipoTexto.terciarioSemibold,
                  cor: Cores.erro,
                ),
              ),
      ],
    );
  }
}
