import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slash/core/errors/failures.dart';
import 'package:slash/core/network/network_info.dart';
import 'package:slash/features/products/data/datasources/products_remote_data_source.dart';
import 'package:slash/features/products/data/models/get_products_response/get_products_response.dart';
import 'package:slash/features/products/domain/repositories/prooducts_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final NetworkInfo _networkInfo;
  final ProductsRemoteDataSource _productsRemoteDataSource;

  ProductsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required ProductsRemoteDataSource productsRemoteDataSource})
      : _networkInfo = networkInfo,
        _productsRemoteDataSource = productsRemoteDataSource;
  @override
  Future<Either<Failure, GetProductsResponse>> getProducts(
      {required int page}) async {
    if (await _networkInfo.connected()) {
      try {
        final response =
            await _productsRemoteDataSource.getProducts(page: page);
        return Right(response);
      } on DioException catch (error) {
        return Left(
          ServerFailure(
            error: error,
            type: NetworkErrorTypes.api,
          ),
        );
      }
    } else {
      return Left(
        ServerFailure(
          error: NoInternetConnection(),
          type: NetworkErrorTypes.noInternetConnection,
        ),
      );
    }
  }
}
