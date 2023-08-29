part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loading() = _Loading;
  const factory UsersState.success({required List<User> users}) = _Success;
  const factory UsersState.error() = _Error;
}
