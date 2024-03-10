import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash/features/product_details/data/models/product_details_model/get_product_details_response.dart';
import 'package:slash/features/product_details/data/models/product_details_model/product_properties_value.dart';
import 'package:slash/features/product_details/data/models/product_details_model/product_varient_image.dart';
import 'package:slash/features/product_details/domain/usecases/get_product_details_usecase.dart';

part 'product_details_cubit.freezed.dart';
part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final GetProductDetailsUsecase _getProductDetailsUsecase;
  ProductDetailsCubit({
    required GetProductDetailsUsecase getProductDetailsUsecase,
  })  : _getProductDetailsUsecase = getProductDetailsUsecase,
        super(const ProductDetailsState.initial());

  GetProductDetailsResponse? productDetails;
  void getProductDetails({required int id}) async {
    emit(const ProductDetailsState.getProductDetailsLoading());
    final response = await _getProductDetailsUsecase.call(id);
    response.fold(
      (failure) => emit(
          ProductDetailsState.getProductDetailsError(failure.getMessage())),
      (data) {
        productDetails = data;
        sliderImages =
            data.productDetailsModel!.variations!.first.productVarientImages!;
        price = data.productDetailsModel!.variations!.first.price!;
        sizesList = data
            .productDetailsModel!.variations!.first.productPropertiesValues!
            .where((element) => element.property == "Size")
            .toList();
        materialsList = data
            .productDetailsModel!.variations!.first.productPropertiesValues!
            .where((element) => element.property == "Materials")
            .toList();
        emit(const ProductDetailsState.getProductDetailsSuccess());
      },
    );
  }

  int imageIndex = 0;
  int sub = 1;
  int price = 0;
  int colorSelectedIndex = 0;
  int sizeSelectedIndex = 0;
  int materialSelectedIndex = 0;
  List<ProductVarientImage> sliderImages = [];
  List<ProductPropertiesValue> sizesList = [];
  List<ProductPropertiesValue> materialsList = [];

  void changeImageIndexFromSlider({required int imageIndex}) {
    if (sub <= 1 ||
        state == ProductDetailsState.changeImageIndexFromRow(imageIndex)) {
      sub = (this.imageIndex - imageIndex).abs();
      this.imageIndex = imageIndex;
      emit(ProductDetailsState.changeImageIndexFromSlider(imageIndex));
    }
  }

  void changeImageIndexFromRow({required int imageIndex}) {
    sub = (this.imageIndex - imageIndex).abs();
    this.imageIndex = imageIndex;
    emit(ProductDetailsState.changeImageIndexFromRow(imageIndex));
  }

  void changeVariationData({required int index}) {
    colorSelectedIndex = index;
    sizeSelectedIndex = 0;
    materialSelectedIndex = 0;
    imageIndex = 0;
    sub = 1;
    // if
    sliderImages = productDetails!
        .productDetailsModel!.variations![index].productVarientImages!;
    price = productDetails!.productDetailsModel!.variations![index].price!;
    sizesList = productDetails!
        .productDetailsModel!.variations![index].productPropertiesValues!
        .where((element) => element.property == "Size")
        .toList();
    materialsList = productDetails!
        .productDetailsModel!.variations![index].productPropertiesValues!
        .where((element) => element.property == "Materials")
        .toList();
    emit(ProductDetailsState.changeVariationData(index));
  }

  void changeSelectedSizeIndex({required int index}) {
    sizeSelectedIndex = index;
    emit(ProductDetailsState.changeSelectedSizeIndex(index));
  }

  void changeSelectedMaterialIndex({required int index}) {
    materialSelectedIndex = index;
    emit(ProductDetailsState.changeSelectedMaterialIndex(index));
  }
}
