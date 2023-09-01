import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_bloc_app/features/users/data/datasources/remote/users_remote.dart';
import 'package:profile_bloc_app/features/users/data/repositories/users_repository_impl.dart';
import 'package:profile_bloc_app/features/users/domain/usecases/get_users_usescases.dart';
import 'package:profile_bloc_app/features/users/presentation/bloc/users_bloc.dart';

import 'package:slider_categories/features/slider_categories/data/datasource/remote/categories_remote.dart';
import 'package:slider_categories/features/slider_categories/data/repositories/categories_repository_impl.dart';
import 'package:slider_categories/features/slider_categories/domain/usecases/get_categories_usescases.dart';
import 'package:slider_categories/features/slider_categories/presentation/bloc/slider_categories_bloc.dart';

List<BlocProvider> blocServices() {
  return [
    BlocProvider<UsersBloc>(
      lazy: true,
      create: (context) => UsersBloc(
        GetUsersUsesCases(
          UsersRepositoryImpl(
            UsersRemoteDataSource(),
          ),
        ),
      ),
    ),
    BlocProvider<SliderCategoriesBloc>(
      lazy: true,
      create: (context) => SliderCategoriesBloc(
        GetCategoriesUsesCases(
          CategoriesRepositoryImpl(
            CategoriesRemoteDataSource(),
          ),
        ),
      )..add(const SliderCategoriesEvent.loadData()),
    ),
  ];
}
