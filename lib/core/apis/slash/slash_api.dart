import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:slash/core/apis/slash/slash_end_points.dart';
import 'package:slash/features/product_details/data/models/product_details_model/get_product_details_response.dart';
import 'package:slash/features/products/data/models/get_products_response/get_products_response.dart';

part 'slash_api.g.dart';

@RestApi(baseUrl: SlashEndPoints.baseUrl)
abstract class SlashApi {
  factory SlashApi(Dio dio, {String baseUrl}) = _SlashApi;

  @GET(SlashEndPoints.product)
  Future<GetProductsResponse> getProducts({
    @Query('limit') int limit = 20,
    @Query('page') required int page,
  });

  @GET("${SlashEndPoints.product}/{id}")
  Future<GetProductDetailsResponse> getProductDetails(
      {@Path() required int id});
}
