import 'package:dartz/dartz.dart';
import 'package:slash/core/errors/failures.dart';
import 'package:slash/features/product_details/data/models/product_details_model/get_product_details_response.dart';

abstract class ProductDetailsRepository {
  Future<Either<Failure, GetProductDetailsResponse>> getProductDetails(
      {required int id});
}
