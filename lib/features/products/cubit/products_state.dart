part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.getProductsLoading() = _GetProductsLoading;
  const factory ProductsState.getProductsSuccess() = _GetProductsSuccess;
  const factory ProductsState.getProductsError(String errorMsg) =
      _GetProductsError;

  const factory ProductsState.loadMoreLoading() = _LoadMoreLoading;
  const factory ProductsState.loadMoreSuccess() = _LoadMoreSuccess;
  const factory ProductsState.loadMoreError(String errorMsg) = _LoadMoreError;
}
