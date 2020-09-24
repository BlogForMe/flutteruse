import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
    Person();

    String name;
    String email;
    num birth;
    
    factory Person.fromJson(Map<String,dynamic> json) => _$PersonFromJson(json);
    Map<String, dynamic> toJson() => _$PersonToJson(this);
}
