import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controlador;
  final String? rotulo;
  final String? dica;
  final Icon? icone;
  Editor({this.controlador, this.rotulo, this.dica, this.icone});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: icone,
          labelText: rotulo,
          hintText: dica,
        ),
      ),
    );
  }
}
