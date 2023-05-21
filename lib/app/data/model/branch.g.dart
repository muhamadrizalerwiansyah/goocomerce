// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Branch _$$_BranchFromJson(Map<String, dynamic> json) => _$_Branch(
      id: json['id'] as String,
      countryId: json['country_id'] as String,
      code: json['code'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      mapUrl: json['map_url'] as String?,
      password: json['password'] as String?,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      nameCountry: json['name_country'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_BranchToJson(_$_Branch instance) => <String, dynamic>{
      'id': instance.id,
      'country_id': instance.countryId,
      'code': instance.code,
      'name': instance.name,
      'address': instance.address,
      'map_url': instance.mapUrl,
      'password': instance.password,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'name_country': instance.nameCountry,
      'image': instance.image,
    };
