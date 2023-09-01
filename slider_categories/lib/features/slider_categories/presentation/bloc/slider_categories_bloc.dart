import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slider_categories/features/slider_categories/domain/models/category.dart';
import 'package:slider_categories/features/slider_categories/domain/usecases/get_categories_usescases.dart';

part 'slider_categories_event.dart';
part 'slider_categories_state.dart';
part 'slider_categories_bloc.freezed.dart';

class SliderCategoriesBloc
    extends Bloc<SliderCategoriesEvent, SliderCategoriesState> {
  final GetCategoriesUsesCases _getCategoriesUsesCases;

  SliderCategoriesBloc(this._getCategoriesUsesCases) : super(const _Initial()) {
    on<_LoadData>(_loadData);
  }
  _loadData(_LoadData event, Emitter<SliderCategoriesState> emit) async {
    emit(const SliderCategoriesState.loading());

    final response = await _getCategoriesUsesCases.getAllCategories();

    response.fold(
        (err) => emit(const SliderCategoriesState.error()),
        (categories) =>
            emit(SliderCategoriesState.success(categories: categories)));
  }
}
