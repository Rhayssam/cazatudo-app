// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GroupModel {
  int? id;
  String name;
  int? type;
  GroupModel({
    this.id,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GroupModel.fromMap(Map<String, dynamic> map) {
    return GroupModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: (map['name'] ?? '') as String,
      type: map['type'] != null ? map['type'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupModel.fromJson(String source) =>
      GroupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GroupModel(id: $id, name: $name, type: $type)';
}
