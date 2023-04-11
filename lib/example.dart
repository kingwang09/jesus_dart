import 'package:json_annotation/json_annotation.dart';

import 'Item.dart';

//패키지 폴터를 lib로 하니까 인식이 되는듯.
//dart run build_runner build
//위 명령어로 build하면 아래 자동으로 만들어짐.

//example.g.dart가 자동으로 만들어짐.

//하위 구조도 jsonSerialize되어 있으면 자동으로 변환이 되는 것으로 보임.
part 'example.g.dart';

@JsonSerializable()
class Book {
  /// The generated code assumes these values exist in JSON.
  final String kind;
  final int totalItems;
  final List<Item>? items;
  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.
  final DateTime? dateOfBirth;

  Book({required this.kind, required this.totalItems, this.items, this.dateOfBirth});

  /// Connect the generated [_$BookFromJson] function to the `fromJson`
  /// factory.
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  String toString() => "kind=$kind, totalItems=$totalItems, items=$items";
}