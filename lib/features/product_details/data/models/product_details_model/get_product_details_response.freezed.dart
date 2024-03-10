// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProductDetailsResponse _$GetProductDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetProductDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProductDetailsResponse {
  @JsonKey(name: 'data')
  ProductDetailsModel? get productDetailsModel =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductDetailsResponseCopyWith<GetProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductDetailsResponseCopyWith<$Res> {
  factory $GetProductDetailsResponseCopyWith(GetProductDetailsResponse value,
          $Res Function(GetProductDetailsResponse) then) =
      _$GetProductDetailsResponseCopyWithImpl<$Res, GetProductDetailsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') ProductDetailsModel? productDetailsModel,
      String? message,
      int? statusCode});

  $ProductDetailsModelCopyWith<$Res>? get productDetailsModel;
}

/// @nodoc
class _$GetProductDetailsResponseCopyWithImpl<$Res,
        $Val extends GetProductDetailsResponse>
    implements $GetProductDetailsResponseCopyWith<$Res> {
  _$GetProductDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productDetailsModel = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      productDetailsModel: freezed == productDetailsModel
          ? _value.productDetailsModel
          : productDetailsModel // ignore: cast_nullable_to_non_nullable
              as ProductDetailsModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailsModelCopyWith<$Res>? get productDetailsModel {
    if (_value.productDetailsModel == null) {
      return null;
    }

    return $ProductDetailsModelCopyWith<$Res>(_value.productDetailsModel!,
        (value) {
      return _then(_value.copyWith(productDetailsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetProductDetailsResponseImplCopyWith<$Res>
    implements $GetProductDetailsResponseCopyWith<$Res> {
  factory _$$GetProductDetailsResponseImplCopyWith(
          _$GetProductDetailsResponseImpl value,
          $Res Function(_$GetProductDetailsResponseImpl) then) =
      __$$GetProductDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') ProductDetailsModel? productDetailsModel,
      String? message,
      int? statusCode});

  @override
  $ProductDetailsModelCopyWith<$Res>? get productDetailsModel;
}

/// @nodoc
class __$$GetProductDetailsResponseImplCopyWithImpl<$Res>
    extends _$GetProductDetailsResponseCopyWithImpl<$Res,
        _$GetProductDetailsResponseImpl>
    implements _$$GetProductDetailsResponseImplCopyWith<$Res> {
  __$$GetProductDetailsResponseImplCopyWithImpl(
      _$GetProductDetailsResponseImpl _value,
      $Res Function(_$GetProductDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productDetailsModel = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$GetProductDetailsResponseImpl(
      productDetailsModel: freezed == productDetailsModel
          ? _value.productDetailsModel
          : productDetailsModel // ignore: cast_nullable_to_non_nullable
              as ProductDetailsModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProductDetailsResponseImpl implements _GetProductDetailsResponse {
  _$GetProductDetailsResponseImpl(
      {@JsonKey(name: 'data') this.productDetailsModel,
      this.message,
      this.statusCode});

  factory _$GetProductDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProductDetailsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final ProductDetailsModel? productDetailsModel;
  @override
  final String? message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'GetProductDetailsResponse(productDetailsModel: $productDetailsModel, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductDetailsResponseImpl &&
            (identical(other.productDetailsModel, productDetailsModel) ||
                other.productDetailsModel == productDetailsModel) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productDetailsModel, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductDetailsResponseImplCopyWith<_$GetProductDetailsResponseImpl>
      get copyWith => __$$GetProductDetailsResponseImplCopyWithImpl<
          _$GetProductDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProductDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetProductDetailsResponse implements GetProductDetailsResponse {
  factory _GetProductDetailsResponse(
      {@JsonKey(name: 'data') final ProductDetailsModel? productDetailsModel,
      final String? message,
      final int? statusCode}) = _$GetProductDetailsResponseImpl;

  factory _GetProductDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$GetProductDetailsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  ProductDetailsModel? get productDetailsModel;
  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$GetProductDetailsResponseImplCopyWith<_$GetProductDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
