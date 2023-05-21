// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String,
      categoryProductId: json['category_product_id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      price: json['price'] as int?,
      photos: json['photos'] as String?,
      stock: json['stock'] as int?,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      nameCategory: json['name_category'] as String?,
      category: json['category'] == null
          ? null
          : CategoryProduct.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_product_id': instance.categoryProductId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'photos': instance.photos,
      'stock': instance.stock,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'name_category': instance.nameCategory,
      'category': instance.category,
    };
