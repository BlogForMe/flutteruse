// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person()
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..birth = json['birth'] as num;
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'birth': instance.birth
    };
