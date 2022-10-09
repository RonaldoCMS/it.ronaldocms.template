// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Animal extends Equatable {
  final int? id;
  final String name;
  final String latinName;
  final String animalType;
  final String activeTime;
  final double lengthMin;
  final double lengthMax;
  final double weightMin;
  final double weightMax;
  final int lifeSpan;
  final String habitat;
  final String diet;
  final String geoRange;
  final String imageLink;
  const Animal({
    this.id,
    required this.name,
    required this.latinName,
    required this.animalType,
    required this.activeTime,
    required this.lengthMin,
    required this.lengthMax,
    required this.weightMin,
    required this.weightMax,
    required this.lifeSpan,
    required this.habitat,
    required this.diet,
    required this.geoRange,
    required this.imageLink,
  });

  Animal copyWith({
    int? id,
    String? name,
    String? latinName,
    String? animalType,
    String? activeTime,
    double? lengthMin,
    double? lengthMax,
    double? weightMin,
    double? weightMax,
    int? lifeSpan,
    String? habitat,
    String? diet,
    String? geoRange,
    String? imageLink,
  }) {
    return Animal(
      id: id ?? this.id,
      name: name ?? this.name,
      latinName: latinName ?? this.latinName,
      animalType: animalType ?? this.animalType,
      activeTime: activeTime ?? this.activeTime,
      lengthMin: lengthMin ?? this.lengthMin,
      lengthMax: lengthMax ?? this.lengthMax,
      weightMin: weightMin ?? this.weightMin,
      weightMax: weightMax ?? this.weightMax,
      lifeSpan: lifeSpan ?? this.lifeSpan,
      habitat: habitat ?? this.habitat,
      diet: diet ?? this.diet,
      geoRange: geoRange ?? this.geoRange,
      imageLink: imageLink ?? this.imageLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'latinName': latinName,
      'animalType': animalType,
      'activeTime': activeTime,
      'lengthMin': lengthMin,
      'lengthMax': lengthMax,
      'weightMin': weightMin,
      'weightMax': weightMax,
      'lifeSpan': lifeSpan,
      'habitat': habitat,
      'diet': diet,
      'geoRange': geoRange,
      'imageLink': imageLink,
    };
  }

  factory Animal.fromMap(Map<String, dynamic> map) {
    return Animal(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      latinName: map['latin_name'] as String,
      animalType: map['animal_type'] as String,
      activeTime: map['active_time'] as String,
      lengthMin: double.parse(map['length_min']).toDouble(),
      lengthMax: double.parse(map['length_max']),
      weightMin: double.parse(map['weight_min']),
      weightMax: double.parse(map['weight_max']),
      lifeSpan: int.parse(map['lifespan']),
      habitat: map['habitat'] as String,
      diet: map['diet'] as String,
      geoRange: map['geo_range'] as String,
      imageLink: map['image_link'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Animal.fromJson(String source) =>
      Animal.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id ?? 0,
      name,
      latinName,
      animalType,
      activeTime,
      lengthMin,
      lengthMax,
      weightMin,
      weightMax,
      lifeSpan,
      habitat,
      diet,
      geoRange,
      imageLink,
    ];
  }
}
