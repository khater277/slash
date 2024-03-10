import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:slash/core/apis/slash/slash_api.dart';
import 'package:slash/core/apis/slash/slash_end_points.dart';
import 'package:slash/core/network/network_info.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/data/datasources/product_details_remote_data_source.dart';
import 'package:slash/features/product_details/data/repositories/product_details_repository_impl.dart';
import 'package:slash/features/product_details/domain/repositories/product_details_repository.dart';
import 'package:slash/features/product_details/domain/usecases/get_product_details_usecase.dart';
import 'package:slash/features/products/cubit/products_cubit.dart';
import 'package:slash/features/products/data/datasources/products_remote_data_source.dart';
import 'package:slash/features/products/data/repositories/products_repository_impl.dart';
import 'package:slash/features/products/domain/repositories/prooducts_repository.dart';
import 'package:slash/features/products/domain/usecases/get_products_usecase.dart';

final di = GetIt.instance;

void setupGetIt() {
  /// CUBITS
  di.registerLazySingleton<ProductsCubit>(() => ProductsCubit(
        getProductsUsecase: di(),
      ));
  di.registerLazySingleton<ProductDetailsCubit>(() => ProductDetailsCubit(
        getProductDetailsUsecase: di(),
      ));

  /// DATASOURCES
  di.registerLazySingleton<ProductsRemoteDataSource>(
      () => ProductsRemoteDataSourceImpl(
            slashApi: di(),
          ));
  di.registerLazySingleton<ProductDetailsRemoteDataSource>(
      () => ProductDetailsRemoteDataSourceImpl(
            slashApi: di(),
          ));

  /// REPOSITORIES
  di.registerLazySingleton<ProductsRepository>(() => ProductsRepositoryImpl(
        networkInfo: di(),
        productsRemoteDataSource: di(),
      ));
  di.registerLazySingleton<ProductDetailsRepository>(
      () => ProductDetailsRepositoryImpl(
            networkInfo: di(),
            productDetailsRemoteDataSource: di(),
          ));

  /// USECASES
  /// PRODUCTS
  di.registerLazySingleton<GetProductsUsecase>(
      () => GetProductsUsecase(productsRepository: di()));

  /// PRODUCT DETAILS
  di.registerLazySingleton<GetProductDetailsUsecase>(
      () => GetProductDetailsUsecase(productDetailsRepository: di()));

  // ///LOCAL STORAGE
  // di.registerLazySingleton<UserStorage>(() => UserStorageImpl());

  /// NETWORK INFO
  di.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: di()));
  di.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());

  /// APIS
  di.registerLazySingleton<SlashApi>(() => SlashApi(di()));

  /// DIOs
  Dio createAndSetupSlashDio() {
    Dio dio = Dio();

    dio.options
      ..baseUrl = SlashEndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..headers = {
        'Content-Type': 'application/json',
      }
      ..connectTimeout = const Duration(seconds: 20)
      // ..receiveTimeout = const Duration(seconds: 60)
      ..followRedirects = false;

    dio.interceptors.add(
      LogInterceptor(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          error: true),
    );

    return dio;
  }

  di.registerLazySingleton<Dio>(() => createAndSetupSlashDio());
}
