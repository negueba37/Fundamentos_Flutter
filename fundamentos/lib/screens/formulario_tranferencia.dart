import 'package:flutter/material.dart';
import 'package:fundamentos/components/editor.dart';
import 'package:fundamentos/models/Transferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controllerNumero = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();
  // ignore: non_constant_identifier_names
  void OnPressConfirmar(BuildContext context) {
    if ((_controllerNumero.text.length > 0) &&
        (_controllerValor.text.length > 0)) {
      final int? numeroConta = int.tryParse(_controllerNumero.text);
      final double? valor = double.tryParse(_controllerValor.text);
      final Tranferencia transferencia = new Tranferencia(valor!, numeroConta!);
      Navigator.pop(context, transferencia);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Craindo Transferência"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                  controlador: _controllerNumero,
                  rotulo: "Numero conta",
                  dica: "12345-6"),
              Editor(
                  controlador: _controllerValor,
                  rotulo: "Valor",
                  dica: "0.00",
                  icone: Icon(Icons.monetization_on)),
              ElevatedButton(
                  onPressed: () {
                    OnPressConfirmar(context);
                  },
                  child: const Text("Confrmar"))
            ],
          ),
        ));
  }
}
