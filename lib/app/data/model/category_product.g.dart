// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryProduct _$$_CategoryProductFromJson(Map<String, dynamic> json) =>
    _$_CategoryProduct(
      id: json['id'] as String,
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_CategoryProductToJson(_$_CategoryProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
    };
