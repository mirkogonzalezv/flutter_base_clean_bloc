import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slider_categories/features/slider_categories/presentation/bloc/slider_categories_bloc.dart';

import 'features/slider_categories/data/datasource/remote/categories_remote.dart';
import 'features/slider_categories/data/repositories/categories_repository_impl.dart';
import 'features/slider_categories/domain/usecases/get_categories_usescases.dart';
import 'features/slider_categories/presentation/widgets/slider_categories.dart';

class SliderCategoriesMicroApp extends StatelessWidget {
  const SliderCategoriesMicroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SliderCategoriesBloc>(
      lazy: false,
      create: (context) => SliderCategoriesBloc(
        GetCategoriesUsesCases(
          CategoriesRepositoryImpl(
            CategoriesRemoteDataSource(),
          ),
        ),
      )..add(const SliderCategoriesEvent.loadData()),
      child: BlocBuilder<SliderCategoriesBloc, SliderCategoriesState>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(),
            loading: () => Container(),
            success: (categories) {
              return SliderCategories(categoryList: categories);
            },
            error: () {
              return const Center(
                child: Text('Error al traer las categorias'),
              );
            },
          );
        },
      ),
    );
  }
}
