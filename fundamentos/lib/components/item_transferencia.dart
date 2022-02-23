import 'package:flutter/material.dart';
import 'package:fundamentos/models/Transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Tranferencia _transferencia;
  const ItemTransferencia(this._transferencia);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const Icon(Icons.monetization_on),
          title: Text(_transferencia.valor.toString()),
          subtitle: Text(_transferencia.numero.toString())),
    );
  }
}
