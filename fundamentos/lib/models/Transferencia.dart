class Tranferencia {
  final double valor;
  final int numero;
  Tranferencia(this.valor, this.numero);
  @override
  String toString() {
    return "Numero da conta ${numero} e valor da conta ${valor}";
  }
}
