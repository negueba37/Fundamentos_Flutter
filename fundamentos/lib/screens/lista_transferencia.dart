import 'package:flutter/material.dart';
import 'package:fundamentos/components/item_transferencia.dart';
import 'package:fundamentos/models/Transferencia.dart';
import 'package:fundamentos/screens/formulario_tranferencia.dart';

class ListaTransferencia extends StatefulWidget {
  final List<Tranferencia> _listTransferencia = [];

  @override
  State<ListaTransferencia> createState() => _ListaTransferenciaState();
}

class _ListaTransferenciaState extends State<ListaTransferencia> {
  void AdditemLista(Tranferencia tranferencia) {
    setState(() {
      if (tranferencia != null) {
        widget._listTransferencia.add(tranferencia);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Transferências"),
      ),
      body: ListView.builder(
        itemCount: widget._listTransferencia.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemTransferencia(widget._listTransferencia[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then((transferencia) => AdditemLista(transferencia!));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
