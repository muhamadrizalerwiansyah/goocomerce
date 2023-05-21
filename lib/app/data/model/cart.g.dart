// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      productId: json['product_id'] as String,
      qty: json['qty'] as int,
      status: json['status'] as bool?,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'product_id': instance.productId,
      'qty': instance.qty,
      'status': instance.status,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'product': instance.product,
    };
