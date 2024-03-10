import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash/features/products/data/models/get_products_response/product_model.dart';
import 'package:slash/features/products/domain/usecases/get_products_usecase.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final GetProductsUsecase _getProductsUsecase;
  ProductsCubit({required GetProductsUsecase getProductsUsecase})
      : _getProductsUsecase = getProductsUsecase,
        super(const ProductsState.initial());

  int page = 1;
  List<ProductModel> products = [];
  void getProducts() async {
    emit(const ProductsState.getProductsLoading());
    final response = await _getProductsUsecase.call(page);
    response.fold(
      (failure) => emit(ProductsState.getProductsError(failure.getMessage())),
      (data) {
        products = data.products!;
        page++;
        emit(const ProductsState.getProductsSuccess());
      },
    );
  }

  void loadMore() async {
    emit(const ProductsState.loadMoreLoading());
    final response = await _getProductsUsecase.call(page);
    response.fold(
      (failure) => emit(ProductsState.loadMoreError(failure.getMessage())),
      (data) {
        page++;
        products += data.products!;
        emit(const ProductsState.loadMoreSuccess());
      },
    );
  }
}
