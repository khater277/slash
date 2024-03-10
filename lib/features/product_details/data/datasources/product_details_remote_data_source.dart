import 'package:slash/core/apis/slash/slash_api.dart';
import 'package:slash/features/product_details/data/models/product_details_model/get_product_details_response.dart';

abstract class ProductDetailsRemoteDataSource {
  Future<GetProductDetailsResponse> getProductDetails({required int id});
}

class ProductDetailsRemoteDataSourceImpl
    implements ProductDetailsRemoteDataSource {
  final SlashApi _slashApi;

  ProductDetailsRemoteDataSourceImpl({required SlashApi slashApi})
      : _slashApi = slashApi;
  @override
  Future<GetProductDetailsResponse> getProductDetails({required int id}) {
    return _slashApi.getProductDetails(id: id);
  }
}
