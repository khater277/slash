import 'package:dartz/dartz.dart';
import 'package:slash/core/errors/failures.dart';
import 'package:slash/features/products/data/models/get_products_response/get_products_response.dart';

abstract class ProductsRepository {
  Future<Either<Failure, GetProductsResponse>> getProducts({required int page});
}
