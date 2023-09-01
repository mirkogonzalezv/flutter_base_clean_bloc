part of 'slider_categories_bloc.dart';

@freezed
class SliderCategoriesEvent with _$SliderCategoriesEvent {
  const factory SliderCategoriesEvent.started() = _Started;
  const factory SliderCategoriesEvent.loadData() = _LoadData;
}
