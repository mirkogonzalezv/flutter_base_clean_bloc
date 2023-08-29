import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_error.freezed.dart';
part 'user_error.g.dart';

@freezed
class UserError with _$UserError {
  factory UserError({required String message}) = _UserError;

  factory UserError.fromJson(Map<String, dynamic> json) =>
      _$UserErrorFromJson(json);
}
