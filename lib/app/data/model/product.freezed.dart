// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_product_id')
  String? get categoryProductId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get photos => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_category')
  String? get nameCategory => throw _privateConstructorUsedError;
  CategoryProduct? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'category_product_id') String? categoryProductId,
      String name,
      String? description,
      int? price,
      String? photos,
      int? stock,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'name_category') String? nameCategory,
      CategoryProduct? category});

  $CategoryProductCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryProductId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? price = freezed,
    Object? photos = freezed,
    Object? stock = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
    Object? nameCategory = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryProductId: freezed == categoryProductId
          ? _value.categoryProductId
          : categoryProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCategory: freezed == nameCategory
          ? _value.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryProduct?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryProductCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryProductCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'category_product_id') String? categoryProductId,
      String name,
      String? description,
      int? price,
      String? photos,
      int? stock,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'name_category') String? nameCategory,
      CategoryProduct? category});

  @override
  $CategoryProductCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryProductId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? price = freezed,
    Object? photos = freezed,
    Object? stock = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
    Object? nameCategory = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryProductId: freezed == categoryProductId
          ? _value.categoryProductId
          : categoryProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCategory: freezed == nameCategory
          ? _value.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryProduct?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      @JsonKey(name: 'category_product_id') this.categoryProductId,
      required this.name,
      this.description,
      this.price,
      this.photos,
      this.stock,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'name_category') this.nameCategory,
      this.category});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'category_product_id')
  final String? categoryProductId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final int? price;
  @override
  final String? photos;
  @override
  final int? stock;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'name_category')
  final String? nameCategory;
  @override
  final CategoryProduct? category;

  @override
  String toString() {
    return 'Product(id: $id, categoryProductId: $categoryProductId, name: $name, description: $description, price: $price, photos: $photos, stock: $stock, createdAt: $createdAt, deletedAt: $deletedAt, nameCategory: $nameCategory, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryProductId, categoryProductId) ||
                other.categoryProductId == categoryProductId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.nameCategory, nameCategory) ||
                other.nameCategory == nameCategory) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryProductId,
      name,
      description,
      price,
      photos,
      stock,
      createdAt,
      deletedAt,
      nameCategory,
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      @JsonKey(name: 'category_product_id') final String? categoryProductId,
      required final String name,
      final String? description,
      final int? price,
      final String? photos,
      final int? stock,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      @JsonKey(name: 'name_category') final String? nameCategory,
      final CategoryProduct? category}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'category_product_id')
  String? get categoryProductId;
  @override
  String get name;
  @override
  String? get description;
  @override
  int? get price;
  @override
  String? get photos;
  @override
  int? get stock;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'name_category')
  String? get nameCategory;
  @override
  CategoryProduct? get category;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
