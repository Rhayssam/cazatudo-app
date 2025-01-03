import 'dart:convert';

class ProductModel {
  int? id;
  String descricao;
  int categoria;
  int setor;
  double valorAnterior;
  double valorPix;
  int parcelas;
  double valorParcelas;
  bool favoritado;
  bool adicionadoCarrinho;
  ProductModel({
    this.id,
    required this.descricao,
    required this.categoria,
    required this.setor,
    required this.valorAnterior,
    required this.valorPix,
    required this.parcelas,
    required this.valorParcelas,
    required this.favoritado,
    required this.adicionadoCarrinho,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'descricao': descricao,
      'categoria': categoria,
      'setor': setor,
      'valorAnterior': valorAnterior,
      'valorPix': valorPix,
      'parcelas': parcelas,
      'valorParcelas': valorParcelas,
      'favoritado': favoritado,
      'adicionadoCarrinho': adicionadoCarrinho,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] != null ? map['id'] as int : null,
      descricao: (map['descricao'] ?? '') as String,
      categoria: (map['categoria'] ?? 0) as int,
      setor: (map['setor'] ?? 0) as int,
      valorAnterior: (map['valorAnterior'] ?? 0.0) as double,
      valorPix: (map['valorPix'] ?? 0.0) as double,
      parcelas: (map['parcelas'] ?? 0) as int,
      valorParcelas: (map['valorParcelas'] ?? 0.0) as double,
      favoritado: (map['favoritado'] ?? false) as bool,
      adicionadoCarrinho: (map['adicionadoCarrinho'] ?? false) as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
