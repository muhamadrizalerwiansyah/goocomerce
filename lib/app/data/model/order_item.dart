import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goocommerce/app/data/model/product.dart';
part 'order_item.freezed.dart';

part 'order_item.g.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'product_id') required String productId,
    required int price,
    required int qty,
    required int subtotal,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    required Product product,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, Object?> json) =>
      _$OrderItemFromJson(json);
}
