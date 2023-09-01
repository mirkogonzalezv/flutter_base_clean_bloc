import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_error.freezed.dart';
part 'category_error.g.dart';

@freezed
class CategoryError with _$CategoryError {
  factory CategoryError({required String message}) = _CategoryError;

  factory CategoryError.fromJson(Map<String, dynamic> json) =>
      _$CategoryErrorFromJson(json);
}
