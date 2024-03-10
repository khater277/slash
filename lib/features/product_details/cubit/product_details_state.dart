part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;

  const factory ProductDetailsState.initPageController() = _InitPageController;
  const factory ProductDetailsState.disposePageController() =
      _DisposePageController;
  const factory ProductDetailsState.getProductDetailsLoading() =
      _GetProductDetailsLoading;
  const factory ProductDetailsState.getProductDetailsSuccess() =
      _GetProductDetailsSuccess;
  const factory ProductDetailsState.getProductDetailsError(String errorMsg) =
      _GetProductDetailsError;
  const factory ProductDetailsState.changeImageIndexFromSlider(int index) =
      _ChangeImageIndexFromSlider;
  const factory ProductDetailsState.changeImageIndexFromRow(int index) =
      _ChangeImageIndexFromRow;
  const factory ProductDetailsState.changeVariationData(int index) =
      _ChangeVariationData;
  const factory ProductDetailsState.changeSelectedSizeIndex(int index) =
      _ChangeSelectedSizeIndex;
  const factory ProductDetailsState.changeSelectedMaterialIndex(int index) =
      _ChangeSelectedMaterialIndex;
}
