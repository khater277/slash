// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_count')
  Count? get count => throw _privateConstructorUsedError;
  List<Variation>? get variations => throw _privateConstructorUsedError;
  List<AvaiableProperty>? get avaiableProperties =>
      throw _privateConstructorUsedError;
  String? get brandName => throw _privateConstructorUsedError;
  String? get brandImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? description,
      @JsonKey(name: '_count') Count? count,
      List<Variation>? variations,
      List<AvaiableProperty>? avaiableProperties,
      String? brandName,
      String? brandImage});

  $CountCopyWith<$Res>? get count;
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? count = freezed,
    Object? variations = freezed,
    Object? avaiableProperties = freezed,
    Object? brandName = freezed,
    Object? brandImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count?,
      variations: freezed == variations
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<Variation>?,
      avaiableProperties: freezed == avaiableProperties
          ? _value.avaiableProperties
          : avaiableProperties // ignore: cast_nullable_to_non_nullable
              as List<AvaiableProperty>?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandImage: freezed == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res>? get count {
    if (_value.count == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.count!, (value) {
      return _then(_value.copyWith(count: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsModelImplCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$ProductDetailsModelImplCopyWith(_$ProductDetailsModelImpl value,
          $Res Function(_$ProductDetailsModelImpl) then) =
      __$$ProductDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? description,
      @JsonKey(name: '_count') Count? count,
      List<Variation>? variations,
      List<AvaiableProperty>? avaiableProperties,
      String? brandName,
      String? brandImage});

  @override
  $CountCopyWith<$Res>? get count;
}

/// @nodoc
class __$$ProductDetailsModelImplCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$ProductDetailsModelImpl>
    implements _$$ProductDetailsModelImplCopyWith<$Res> {
  __$$ProductDetailsModelImplCopyWithImpl(_$ProductDetailsModelImpl _value,
      $Res Function(_$ProductDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? count = freezed,
    Object? variations = freezed,
    Object? avaiableProperties = freezed,
    Object? brandName = freezed,
    Object? brandImage = freezed,
  }) {
    return _then(_$ProductDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count?,
      variations: freezed == variations
          ? _value._variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<Variation>?,
      avaiableProperties: freezed == avaiableProperties
          ? _value._avaiableProperties
          : avaiableProperties // ignore: cast_nullable_to_non_nullable
              as List<AvaiableProperty>?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandImage: freezed == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailsModelImpl implements _ProductDetailsModel {
  _$ProductDetailsModelImpl(
      {this.id,
      this.name,
      this.type,
      this.description,
      @JsonKey(name: '_count') this.count,
      final List<Variation>? variations,
      final List<AvaiableProperty>? avaiableProperties,
      this.brandName,
      this.brandImage})
      : _variations = variations,
        _avaiableProperties = avaiableProperties;

  factory _$ProductDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? description;
  @override
  @JsonKey(name: '_count')
  final Count? count;
  final List<Variation>? _variations;
  @override
  List<Variation>? get variations {
    final value = _variations;
    if (value == null) return null;
    if (_variations is EqualUnmodifiableListView) return _variations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AvaiableProperty>? _avaiableProperties;
  @override
  List<AvaiableProperty>? get avaiableProperties {
    final value = _avaiableProperties;
    if (value == null) return null;
    if (_avaiableProperties is EqualUnmodifiableListView)
      return _avaiableProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? brandName;
  @override
  final String? brandImage;

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, name: $name, type: $type, description: $description, count: $count, variations: $variations, avaiableProperties: $avaiableProperties, brandName: $brandName, brandImage: $brandImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._variations, _variations) &&
            const DeepCollectionEquality()
                .equals(other._avaiableProperties, _avaiableProperties) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.brandImage, brandImage) ||
                other.brandImage == brandImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      description,
      count,
      const DeepCollectionEquality().hash(_variations),
      const DeepCollectionEquality().hash(_avaiableProperties),
      brandName,
      brandImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      __$$ProductDetailsModelImplCopyWithImpl<_$ProductDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel implements ProductDetailsModel {
  factory _ProductDetailsModel(
      {final int? id,
      final String? name,
      final String? type,
      final String? description,
      @JsonKey(name: '_count') final Count? count,
      final List<Variation>? variations,
      final List<AvaiableProperty>? avaiableProperties,
      final String? brandName,
      final String? brandImage}) = _$ProductDetailsModelImpl;

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get description;
  @override
  @JsonKey(name: '_count')
  Count? get count;
  @override
  List<Variation>? get variations;
  @override
  List<AvaiableProperty>? get avaiableProperties;
  @override
  String? get brandName;
  @override
  String? get brandImage;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
