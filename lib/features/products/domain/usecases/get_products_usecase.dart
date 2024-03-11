import 'package:dartz/dartz.dart';
import 'package:slash/core/base_usecase/base_usecase.dart';
import 'package:slash/core/errors/failures.dart';
import 'package:slash/features/products/data/models/get_products_response/get_products_response.dart';
import 'package:slash/features/products/domain/repositories/products_repository.dart';

// Future<Either<Failure, GetProductsResponse>> getProducts({required int page});

class GetProductsUsecase implements BaseUseCase<GetProductsResponse, int> {
  final ProductsRepository _productsRepository;

  GetProductsUsecase({required ProductsRepository productsRepository})
      : _productsRepository = productsRepository;
  @override
  Future<Either<Failure, GetProductsResponse>> call(int page) {
    return _productsRepository.getProducts(page: page);
  }
}
