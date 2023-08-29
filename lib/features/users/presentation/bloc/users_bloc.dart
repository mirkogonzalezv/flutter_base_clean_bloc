import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:profile_bloc_app/features/users/domain/usecases/get_users_usescases.dart';

import '../../domain/models/user.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final GetUsersUsesCases _getUsersUsesCases;

  UsersBloc(this._getUsersUsesCases) : super(const _Initial()) {
    on<_LoadData>(_loadData);
  }

  _loadData(_LoadData event, Emitter<UsersState> emit) async {
    emit(const UsersState.loading());

    await Future.delayed(const Duration(milliseconds: 1500));
    final response = await _getUsersUsesCases.getAllUsers();

    response.fold(
      (err) => emit(
        const UsersState.error(),
      ),
      (users) {
        log(users.toString());
        emit(
          UsersState.success(users: users),
        );
      },
    );
  }
}
