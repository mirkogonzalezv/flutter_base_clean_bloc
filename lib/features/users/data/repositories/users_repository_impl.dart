import 'package:profile_bloc_app/features/users/data/datasources/remote/users_remote.dart';
import 'package:profile_bloc_app/features/users/domain/models/user.dart';
import 'package:profile_bloc_app/features/users/domain/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersRemoteDataSource _usersRemoteDataSource;
  UsersRepositoryImpl(this._usersRemoteDataSource);

  @override
  Future<List<User>> getAllUsers() async {
    try {
      // Data Source
      final result = await _usersRemoteDataSource.getAllUsers();

      if (result != null) {
        return result;
      }

      return [];
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<User> getUser({required String id}) {
    throw UnimplementedError();
  }
}
