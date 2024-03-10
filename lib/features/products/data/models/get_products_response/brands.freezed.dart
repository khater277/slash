// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Brands _$BrandsFromJson(Map<String, dynamic> json) {
  return _Brands.fromJson(json);
}

/// @nodoc
mixin _$Brands {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_logo_image_path')
  String? get brandLogoImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsCopyWith<Brands> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsCopyWith<$Res> {
  factory $BrandsCopyWith(Brands value, $Res Function(Brands) then) =
      _$BrandsCopyWithImpl<$Res, Brands>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'brand_logo_image_path') String? brandLogoImagePath});
}

/// @nodoc
class _$BrandsCopyWithImpl<$Res, $Val extends Brands>
    implements $BrandsCopyWith<$Res> {
  _$BrandsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandLogoImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brandLogoImagePath: freezed == brandLogoImagePath
          ? _value.brandLogoImagePath
          : brandLogoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsImplCopyWith<$Res> implements $BrandsCopyWith<$Res> {
  factory _$$BrandsImplCopyWith(
          _$BrandsImpl value, $Res Function(_$BrandsImpl) then) =
      __$$BrandsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'brand_logo_image_path') String? brandLogoImagePath});
}

/// @nodoc
class __$$BrandsImplCopyWithImpl<$Res>
    extends _$BrandsCopyWithImpl<$Res, _$BrandsImpl>
    implements _$$BrandsImplCopyWith<$Res> {
  __$$BrandsImplCopyWithImpl(
      _$BrandsImpl _value, $Res Function(_$BrandsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandLogoImagePath = freezed,
  }) {
    return _then(_$BrandsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brandLogoImagePath: freezed == brandLogoImagePath
          ? _value.brandLogoImagePath
          : brandLogoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandsImpl implements _Brands {
  _$BrandsImpl(
      {this.id,
      @JsonKey(name: 'brand_logo_image_path') this.brandLogoImagePath});

  factory _$BrandsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'brand_logo_image_path')
  final String? brandLogoImagePath;

  @override
  String toString() {
    return 'Brands(id: $id, brandLogoImagePath: $brandLogoImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandLogoImagePath, brandLogoImagePath) ||
                other.brandLogoImagePath == brandLogoImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, brandLogoImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsImplCopyWith<_$BrandsImpl> get copyWith =>
      __$$BrandsImplCopyWithImpl<_$BrandsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsImplToJson(
      this,
    );
  }
}

abstract class _Brands implements Brands {
  factory _Brands(
      {final int? id,
      @JsonKey(name: 'brand_logo_image_path')
      final String? brandLogoImagePath}) = _$BrandsImpl;

  factory _Brands.fromJson(Map<String, dynamic> json) = _$BrandsImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'brand_logo_image_path')
  String? get brandLogoImagePath;
  @override
  @JsonKey(ignore: true)
  _$$BrandsImplCopyWith<_$BrandsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
