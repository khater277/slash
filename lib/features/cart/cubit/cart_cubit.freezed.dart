// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartModel> cartItems) getCartItems,
    required TResult Function(CartModel cartModel) addProductToCart,
    required TResult Function(int id) deleteProductFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? getCartItems,
    TResult? Function(CartModel cartModel)? addProductToCart,
    TResult? Function(int id)? deleteProductFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? getCartItems,
    TResult Function(CartModel cartModel)? addProductToCart,
    TResult Function(int id)? deleteProductFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCartItems value) getCartItems,
    required TResult Function(_AddProductToCart value) addProductToCart,
    required TResult Function(_DeleteProductFromCart value)
        deleteProductFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCartItems value)? getCartItems,
    TResult? Function(_AddProductToCart value)? addProductToCart,
    TResult? Function(_DeleteProductFromCart value)? deleteProductFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCartItems value)? getCartItems,
    TResult Function(_AddProductToCart value)? addProductToCart,
    TResult Function(_DeleteProductFromCart value)? deleteProductFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartModel> cartItems) getCartItems,
    required TResult Function(CartModel cartModel) addProductToCart,
    required TResult Function(int id) deleteProductFromCart,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? getCartItems,
    TResult? Function(CartModel cartModel)? addProductToCart,
    TResult? Function(int id)? deleteProductFromCart,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? getCartItems,
    TResult Function(CartModel cartModel)? addProductToCart,
    TResult Function(int id)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCartItems value) getCartItems,
    required TResult Function(_AddProductToCart value) addProductToCart,
    required TResult Function(_DeleteProductFromCart value)
        deleteProductFromCart,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCartItems value)? getCartItems,
    TResult? Function(_AddProductToCart value)? addProductToCart,
    TResult? Function(_DeleteProductFromCart value)? deleteProductFromCart,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCartItems value)? getCartItems,
    TResult Function(_AddProductToCart value)? addProductToCart,
    TResult Function(_DeleteProductFromCart value)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetCartItemsImplCopyWith<$Res> {
  factory _$$GetCartItemsImplCopyWith(
          _$GetCartItemsImpl value, $Res Function(_$GetCartItemsImpl) then) =
      __$$GetCartItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartModel> cartItems});
}

/// @nodoc
class __$$GetCartItemsImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartItemsImpl>
    implements _$$GetCartItemsImplCopyWith<$Res> {
  __$$GetCartItemsImplCopyWithImpl(
      _$GetCartItemsImpl _value, $Res Function(_$GetCartItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$GetCartItemsImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$GetCartItemsImpl implements _GetCartItems {
  const _$GetCartItemsImpl(final List<CartModel> cartItems)
      : _cartItems = cartItems;

  final List<CartModel> _cartItems;
  @override
  List<CartModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.getCartItems(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartItemsImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartItemsImplCopyWith<_$GetCartItemsImpl> get copyWith =>
      __$$GetCartItemsImplCopyWithImpl<_$GetCartItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartModel> cartItems) getCartItems,
    required TResult Function(CartModel cartModel) addProductToCart,
    required TResult Function(int id) deleteProductFromCart,
  }) {
    return getCartItems(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? getCartItems,
    TResult? Function(CartModel cartModel)? addProductToCart,
    TResult? Function(int id)? deleteProductFromCart,
  }) {
    return getCartItems?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? getCartItems,
    TResult Function(CartModel cartModel)? addProductToCart,
    TResult Function(int id)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (getCartItems != null) {
      return getCartItems(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCartItems value) getCartItems,
    required TResult Function(_AddProductToCart value) addProductToCart,
    required TResult Function(_DeleteProductFromCart value)
        deleteProductFromCart,
  }) {
    return getCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCartItems value)? getCartItems,
    TResult? Function(_AddProductToCart value)? addProductToCart,
    TResult? Function(_DeleteProductFromCart value)? deleteProductFromCart,
  }) {
    return getCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCartItems value)? getCartItems,
    TResult Function(_AddProductToCart value)? addProductToCart,
    TResult Function(_DeleteProductFromCart value)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (getCartItems != null) {
      return getCartItems(this);
    }
    return orElse();
  }
}

abstract class _GetCartItems implements CartState {
  const factory _GetCartItems(final List<CartModel> cartItems) =
      _$GetCartItemsImpl;

  List<CartModel> get cartItems;
  @JsonKey(ignore: true)
  _$$GetCartItemsImplCopyWith<_$GetCartItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartImplCopyWith<$Res> {
  factory _$$AddProductToCartImplCopyWith(_$AddProductToCartImpl value,
          $Res Function(_$AddProductToCartImpl) then) =
      __$$AddProductToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartModel});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$AddProductToCartImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddProductToCartImpl>
    implements _$$AddProductToCartImplCopyWith<$Res> {
  __$$AddProductToCartImplCopyWithImpl(_$AddProductToCartImpl _value,
      $Res Function(_$AddProductToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
  }) {
    return _then(_$AddProductToCartImpl(
      null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$AddProductToCartImpl implements _AddProductToCart {
  const _$AddProductToCartImpl(this.cartModel);

  @override
  final CartModel cartModel;

  @override
  String toString() {
    return 'CartState.addProductToCart(cartModel: $cartModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartImpl &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartImplCopyWith<_$AddProductToCartImpl> get copyWith =>
      __$$AddProductToCartImplCopyWithImpl<_$AddProductToCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartModel> cartItems) getCartItems,
    required TResult Function(CartModel cartModel) addProductToCart,
    required TResult Function(int id) deleteProductFromCart,
  }) {
    return addProductToCart(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? getCartItems,
    TResult? Function(CartModel cartModel)? addProductToCart,
    TResult? Function(int id)? deleteProductFromCart,
  }) {
    return addProductToCart?.call(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? getCartItems,
    TResult Function(CartModel cartModel)? addProductToCart,
    TResult Function(int id)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(cartModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCartItems value) getCartItems,
    required TResult Function(_AddProductToCart value) addProductToCart,
    required TResult Function(_DeleteProductFromCart value)
        deleteProductFromCart,
  }) {
    return addProductToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCartItems value)? getCartItems,
    TResult? Function(_AddProductToCart value)? addProductToCart,
    TResult? Function(_DeleteProductFromCart value)? deleteProductFromCart,
  }) {
    return addProductToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCartItems value)? getCartItems,
    TResult Function(_AddProductToCart value)? addProductToCart,
    TResult Function(_DeleteProductFromCart value)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(this);
    }
    return orElse();
  }
}

abstract class _AddProductToCart implements CartState {
  const factory _AddProductToCart(final CartModel cartModel) =
      _$AddProductToCartImpl;

  CartModel get cartModel;
  @JsonKey(ignore: true)
  _$$AddProductToCartImplCopyWith<_$AddProductToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductFromCartImplCopyWith<$Res> {
  factory _$$DeleteProductFromCartImplCopyWith(
          _$DeleteProductFromCartImpl value,
          $Res Function(_$DeleteProductFromCartImpl) then) =
      __$$DeleteProductFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteProductFromCartImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$DeleteProductFromCartImpl>
    implements _$$DeleteProductFromCartImplCopyWith<$Res> {
  __$$DeleteProductFromCartImplCopyWithImpl(_$DeleteProductFromCartImpl _value,
      $Res Function(_$DeleteProductFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProductFromCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteProductFromCartImpl implements _DeleteProductFromCart {
  const _$DeleteProductFromCartImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CartState.deleteProductFromCart(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductFromCartImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductFromCartImplCopyWith<_$DeleteProductFromCartImpl>
      get copyWith => __$$DeleteProductFromCartImplCopyWithImpl<
          _$DeleteProductFromCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartModel> cartItems) getCartItems,
    required TResult Function(CartModel cartModel) addProductToCart,
    required TResult Function(int id) deleteProductFromCart,
  }) {
    return deleteProductFromCart(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartModel> cartItems)? getCartItems,
    TResult? Function(CartModel cartModel)? addProductToCart,
    TResult? Function(int id)? deleteProductFromCart,
  }) {
    return deleteProductFromCart?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartModel> cartItems)? getCartItems,
    TResult Function(CartModel cartModel)? addProductToCart,
    TResult Function(int id)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (deleteProductFromCart != null) {
      return deleteProductFromCart(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCartItems value) getCartItems,
    required TResult Function(_AddProductToCart value) addProductToCart,
    required TResult Function(_DeleteProductFromCart value)
        deleteProductFromCart,
  }) {
    return deleteProductFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCartItems value)? getCartItems,
    TResult? Function(_AddProductToCart value)? addProductToCart,
    TResult? Function(_DeleteProductFromCart value)? deleteProductFromCart,
  }) {
    return deleteProductFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCartItems value)? getCartItems,
    TResult Function(_AddProductToCart value)? addProductToCart,
    TResult Function(_DeleteProductFromCart value)? deleteProductFromCart,
    required TResult orElse(),
  }) {
    if (deleteProductFromCart != null) {
      return deleteProductFromCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductFromCart implements CartState {
  const factory _DeleteProductFromCart(final int id) =
      _$DeleteProductFromCartImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteProductFromCartImplCopyWith<_$DeleteProductFromCartImpl>
      get copyWith => throw _privateConstructorUsedError;
}
