import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash/core/local_storage/cart_storage.dart';
import 'package:slash/features/cart/data/models/cart_model/cart_model.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  final CartStorage _cartStorage;
  CartCubit({required CartStorage cartStorage})
      : _cartStorage = cartStorage,
        super(const CartState.initial());

  void addProductToCart({required CartModel cartModel}) async {
    await _cartStorage.saveCartItem(cartModel: cartModel);
    emit(CartState.addProductToCart(cartModel));
  }

  void deleteProductFromCart({required int id}) async {
    await _cartStorage.deleteCartItem(id: id);
    emit(CartState.deleteProductFromCart(id));
  }
}
