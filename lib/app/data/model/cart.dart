import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goocommerce/app/data/model/product.dart';
part 'cart.freezed.dart';

part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  const factory Cart({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'product_id') required String productId,
    required int qty,
    bool? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    required Product product,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);
}
