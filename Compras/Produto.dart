class Produto {
  String? _produto;
  double? _valor;

  Produto(String produto, double valor) {
    this._produto = produto;
    this._valor = valor;
  }

  String get getProduto => _produto!;
  double get getValor => _valor!;

  set setProduto(produto) => _produto = produto;
  set ssetValor(valor) => _valor = valor;
}
