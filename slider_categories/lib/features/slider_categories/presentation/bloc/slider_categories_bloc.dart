import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_categories_event.dart';
part 'slider_categories_state.dart';
part 'slider_categories_bloc.freezed.dart';

class SliderCategoriesBloc
    extends Bloc<SliderCategoriesEvent, SliderCategoriesState> {
  SliderCategoriesBloc() : super(const _Initial()) {
    on<SliderCategoriesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
