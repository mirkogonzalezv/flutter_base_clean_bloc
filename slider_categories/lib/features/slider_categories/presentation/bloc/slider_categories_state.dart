part of 'slider_categories_bloc.dart';

@freezed
class SliderCategoriesState with _$SliderCategoriesState {
  const factory SliderCategoriesState.initial() = _Initial;
  const factory SliderCategoriesState.loading() = _Loading;
  const factory SliderCategoriesState.success(
      {required List<Category> categories}) = _Success;
  const factory SliderCategoriesState.error() = _Error;
}
