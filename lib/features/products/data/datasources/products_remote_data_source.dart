import 'package:slash/core/apis/slash/slash_api.dart';
import 'package:slash/features/products/data/models/get_products_response/get_products_response.dart';

abstract class ProductsRemoteDataSource {
  Future<GetProductsResponse> getProducts({required int page});
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final SlashApi _slashApi;

  ProductsRemoteDataSourceImpl({required SlashApi slashApi})
      : _slashApi = slashApi;
  @override
  Future<GetProductsResponse> getProducts({required int page}) {
    return _slashApi.getProducts(page: page);
  }
}
