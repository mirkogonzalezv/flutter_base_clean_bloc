// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      email: json['email'] as String,
      lastName: json['last_name'] as String,
      firstName: json['first_name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'avatar': instance.avatar,
    };
