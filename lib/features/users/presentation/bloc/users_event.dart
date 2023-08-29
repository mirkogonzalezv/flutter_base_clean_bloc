part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.started() = _Started;
  const factory UsersEvent.loadData() = _LoadData;
  const factory UsersEvent.loadOneUser({required String id}) = _SelectUser;
}
