// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id_nodo'] as int,
      image: json['image'] as String,
      nombre: json['nombre'] as String,
      orden: json['orden'] as int,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id_nodo': instance.id,
      'image': instance.image,
      'nombre': instance.nombre,
      'orden': instance.orden,
    };
