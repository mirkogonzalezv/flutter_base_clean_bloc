import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:profile_bloc_app/features/users/domain/models/user.dart';
import 'package:profile_bloc_app/features/users/domain/models/user_error.dart';
import 'package:profile_bloc_app/features/users/domain/repositories/users_repository.dart';

class GetUsersUsesCases {
  final UsersRepository _usersRepository;

  GetUsersUsesCases(this._usersRepository);

  Future<Either<UserError, List<User>>> getAllUsers() async {
    try {
      List<User> usersList = await _usersRepository.getAllUsers();

      return right(usersList);
    } on Exception catch (e) {
      log(e.toString());
      return left(UserError(message: 'Problemas al cargar lista de usuarios'));
    }
  }
}
