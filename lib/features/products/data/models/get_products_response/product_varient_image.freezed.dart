// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_varient_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductVarientImage _$ProductVarientImageFromJson(Map<String, dynamic> json) {
  return _ProductVarientImage.fromJson(json);
}

/// @nodoc
mixin _$ProductVarientImage {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_varient_id')
  int? get productVarientId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVarientImageCopyWith<ProductVarientImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVarientImageCopyWith<$Res> {
  factory $ProductVarientImageCopyWith(
          ProductVarientImage value, $Res Function(ProductVarientImage) then) =
      _$ProductVarientImageCopyWithImpl<$Res, ProductVarientImage>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'image_path') String? imagePath,
      @JsonKey(name: 'product_varient_id') int? productVarientId});
}

/// @nodoc
class _$ProductVarientImageCopyWithImpl<$Res, $Val extends ProductVarientImage>
    implements $ProductVarientImageCopyWith<$Res> {
  _$ProductVarientImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? productVarientId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      productVarientId: freezed == productVarientId
          ? _value.productVarientId
          : productVarientId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVarientImageImplCopyWith<$Res>
    implements $ProductVarientImageCopyWith<$Res> {
  factory _$$ProductVarientImageImplCopyWith(_$ProductVarientImageImpl value,
          $Res Function(_$ProductVarientImageImpl) then) =
      __$$ProductVarientImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'image_path') String? imagePath,
      @JsonKey(name: 'product_varient_id') int? productVarientId});
}

/// @nodoc
class __$$ProductVarientImageImplCopyWithImpl<$Res>
    extends _$ProductVarientImageCopyWithImpl<$Res, _$ProductVarientImageImpl>
    implements _$$ProductVarientImageImplCopyWith<$Res> {
  __$$ProductVarientImageImplCopyWithImpl(_$ProductVarientImageImpl _value,
      $Res Function(_$ProductVarientImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? productVarientId = freezed,
  }) {
    return _then(_$ProductVarientImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      productVarientId: freezed == productVarientId
          ? _value.productVarientId
          : productVarientId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVarientImageImpl implements _ProductVarientImage {
  _$ProductVarientImageImpl(
      {this.id,
      @JsonKey(name: 'image_path') this.imagePath,
      @JsonKey(name: 'product_varient_id') this.productVarientId});

  factory _$ProductVarientImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVarientImageImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'image_path')
  final String? imagePath;
  @override
  @JsonKey(name: 'product_varient_id')
  final int? productVarientId;

  @override
  String toString() {
    return 'ProductVarientImage(id: $id, imagePath: $imagePath, productVarientId: $productVarientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVarientImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.productVarientId, productVarientId) ||
                other.productVarientId == productVarientId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, productVarientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVarientImageImplCopyWith<_$ProductVarientImageImpl> get copyWith =>
      __$$ProductVarientImageImplCopyWithImpl<_$ProductVarientImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVarientImageImplToJson(
      this,
    );
  }
}

abstract class _ProductVarientImage implements ProductVarientImage {
  factory _ProductVarientImage(
          {final int? id,
          @JsonKey(name: 'image_path') final String? imagePath,
          @JsonKey(name: 'product_varient_id') final int? productVarientId}) =
      _$ProductVarientImageImpl;

  factory _ProductVarientImage.fromJson(Map<String, dynamic> json) =
      _$ProductVarientImageImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'image_path')
  String? get imagePath;
  @override
  @JsonKey(name: 'product_varient_id')
  int? get productVarientId;
  @override
  @JsonKey(ignore: true)
  _$$ProductVarientImageImplCopyWith<_$ProductVarientImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
