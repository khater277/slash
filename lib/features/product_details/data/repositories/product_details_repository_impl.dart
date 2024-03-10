import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slash/core/errors/failures.dart';
import 'package:slash/core/network/network_info.dart';
import 'package:slash/features/product_details/data/datasources/product_details_remote_data_source.dart';
import 'package:slash/features/product_details/data/models/product_details_model/get_product_details_response.dart';
import 'package:slash/features/product_details/domain/repositories/product_details_repository.dart';

class ProductDetailsRepositoryImpl implements ProductDetailsRepository {
  final NetworkInfo _networkInfo;
  final ProductDetailsRemoteDataSource _productDetailsRemoteDataSource;

  ProductDetailsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required ProductDetailsRemoteDataSource productDetailsRemoteDataSource})
      : _networkInfo = networkInfo,
        _productDetailsRemoteDataSource = productDetailsRemoteDataSource;
  @override
  Future<Either<Failure, GetProductDetailsResponse>> getProductDetails(
      {required int id}) async {
    if (await _networkInfo.connected()) {
      try {
        final response =
            await _productDetailsRemoteDataSource.getProductDetails(id: id);
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
