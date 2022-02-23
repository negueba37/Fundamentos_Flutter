import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Craindo Transferência"),
        ),
        body: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                  labelText: "Número da conta",
                  hintText: "000",
                ),
              ),
            ),
            TextField(),
            ElevatedButton(onPressed: null, child: const Text("Confrmar"))
          ],
        ));
  }
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Transferências"),
      ),
      body: Column(
        children: [
          ItemTransferencia(Tranferencia(200, 100)),
          ItemTransferencia(Tranferencia(500, 123)),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

class Tranferencia {
  final double valor;
  final int numero;
  Tranferencia(this.valor, this.numero);
}

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
