// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      productId: json['product_id'] as String,
      price: json['price'] as int,
      qty: json['qty'] as int,
      subtotal: json['subtotal'] as int,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'price': instance.price,
      'qty': instance.qty,
      'subtotal': instance.subtotal,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'product': instance.product,
    };
