part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.getCartItems(List<CartModel> cartItems) =
      _GetCartItems;
  const factory CartState.addProductToCart(CartModel cartModel) =
      _AddProductToCart;
  const factory CartState.deleteProductFromCart(int id) =
      _DeleteProductFromCart;
}
