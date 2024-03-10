import 'package:dartz/dartz.dart';
import 'package:slash/core/base_usecase/base_usecase.dart';
import 'package:slash/core/errors/failures.dart';
import 'package:slash/features/product_details/data/models/product_details_model/get_product_details_response.dart';
import 'package:slash/features/product_details/domain/repositories/product_details_repository.dart';

class GetProductDetailsUsecase
    implements BaseUseCase<GetProductDetailsResponse, int> {
  final ProductDetailsRepository _productDetailsRepository;

  GetProductDetailsUsecase(
      {required ProductDetailsRepository productDetailsRepository})
      : _productDetailsRepository = productDetailsRepository;
  @override
  Future<Either<Failure, GetProductDetailsResponse>> call(int id) {
    return _productDetailsRepository.getProductDetails(id: id);
  }
}
