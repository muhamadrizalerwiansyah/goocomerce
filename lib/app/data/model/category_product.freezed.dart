// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryProduct _$CategoryProductFromJson(Map<String, dynamic> json) {
  return _CategoryProduct.fromJson(json);
}

/// @nodoc
mixin _$CategoryProduct {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryProductCopyWith<CategoryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductCopyWith<$Res> {
  factory $CategoryProductCopyWith(
          CategoryProduct value, $Res Function(CategoryProduct) then) =
      _$CategoryProductCopyWithImpl<$Res, CategoryProduct>;
  @useResult
  $Res call(
      {String id,
      String code,
      String name,
      String? description,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});
}

/// @nodoc
class _$CategoryProductCopyWithImpl<$Res, $Val extends CategoryProduct>
    implements $CategoryProductCopyWith<$Res> {
  _$CategoryProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryProductCopyWith<$Res>
    implements $CategoryProductCopyWith<$Res> {
  factory _$$_CategoryProductCopyWith(
          _$_CategoryProduct value, $Res Function(_$_CategoryProduct) then) =
      __$$_CategoryProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String code,
      String name,
      String? description,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});
}

/// @nodoc
class __$$_CategoryProductCopyWithImpl<$Res>
    extends _$CategoryProductCopyWithImpl<$Res, _$_CategoryProduct>
    implements _$$_CategoryProductCopyWith<$Res> {
  __$$_CategoryProductCopyWithImpl(
      _$_CategoryProduct _value, $Res Function(_$_CategoryProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_CategoryProduct(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryProduct implements _CategoryProduct {
  const _$_CategoryProduct(
      {required this.id,
      required this.code,
      required this.name,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$_CategoryProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryProductFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;

  @override
  String toString() {
    return 'CategoryProduct(id: $id, code: $code, name: $name, description: $description, createdAt: $createdAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, code, name, description, createdAt, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryProductCopyWith<_$_CategoryProduct> get copyWith =>
      __$$_CategoryProductCopyWithImpl<_$_CategoryProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryProductToJson(
      this,
    );
  }
}

abstract class _CategoryProduct implements CategoryProduct {
  const factory _CategoryProduct(
          {required final String id,
          required final String code,
          required final String name,
          final String? description,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'deleted_at') final String? deletedAt}) =
      _$_CategoryProduct;

  factory _CategoryProduct.fromJson(Map<String, dynamic> json) =
      _$_CategoryProduct.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryProductCopyWith<_$_CategoryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
