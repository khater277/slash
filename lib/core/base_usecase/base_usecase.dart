import 'package:dartz/dartz.dart';
import 'package:slash/core/errors/failures.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
