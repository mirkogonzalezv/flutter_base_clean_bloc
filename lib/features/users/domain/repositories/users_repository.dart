import 'package:profile_bloc_app/features/users/domain/models/user.dart';

abstract class UsersRepository {
  Future<List<User>> getAllUsers();
  Future<User> getUser({required String id});
}
