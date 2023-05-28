// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      branchId: json['branch_id'] as String,
      invoiceId: json['invoice_id'] as String,
      orderStatus: json['order_status'] as String,
      total: json['total'] as int,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      orderItems: (json['order_items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'branch_id': instance.branchId,
      'invoice_id': instance.invoiceId,
      'order_status': instance.orderStatus,
      'total': instance.total,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'order_items': instance.orderItems,
    };
