import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_bloc_app/features/users/data/datasources/remote/users_remote.dart';
import 'package:profile_bloc_app/features/users/data/repositories/users_repository_impl.dart';
import 'package:profile_bloc_app/features/users/domain/usecases/get_users_usescases.dart';
import 'package:profile_bloc_app/features/users/presentation/bloc/users_bloc.dart';

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
    )
  ];
}
