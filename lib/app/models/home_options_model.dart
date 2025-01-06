import 'dart:convert';

class HomeOptionsModel {
  int? id;
  String name;
  String? image;
  HomeOptionsModel({
    this.id,
    required this.name,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory HomeOptionsModel.fromMap(Map<String, dynamic> map) {
    return HomeOptionsModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: (map['name'] ?? '') as String,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeOptionsModel.fromJson(String source) =>
      HomeOptionsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
