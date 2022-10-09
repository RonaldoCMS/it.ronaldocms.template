// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Number extends Equatable {
  final int value;
  const Number({
    required this.value,
  });

  Number copyWith({
    int? count,
  }) {
    return Number(
      value: count ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': value,
    };
  }

  factory Number.fromMap(Map<String, dynamic> map) {
    return Number(
      value: map['count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Number.fromJson(String source) =>
      Number.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [value];
}
