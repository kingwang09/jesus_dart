import 'package:json_annotation/json_annotation.dart';

//패키지 폴터를 lib로 하니까 인식이 되는듯.

part 'example.g.dart';

@JsonSerializable()
class Book {
  /// The generated code assumes these values exist in JSON.
  final String kind;
  final int totalItems;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.
  final DateTime? dateOfBirth;

  Book({required this.kind, required this.totalItems, this.dateOfBirth});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  String toString() => "kind=$kind, totalItems=$totalItems";
}