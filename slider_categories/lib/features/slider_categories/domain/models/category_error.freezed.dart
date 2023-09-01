// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryError _$CategoryErrorFromJson(Map<String, dynamic> json) {
  return _CategoryError.fromJson(json);
}

/// @nodoc
mixin _$CategoryError {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryErrorCopyWith<CategoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryErrorCopyWith<$Res> {
  factory $CategoryErrorCopyWith(
          CategoryError value, $Res Function(CategoryError) then) =
      _$CategoryErrorCopyWithImpl<$Res, CategoryError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CategoryErrorCopyWithImpl<$Res, $Val extends CategoryError>
    implements $CategoryErrorCopyWith<$Res> {
  _$CategoryErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryErrorCopyWith<$Res>
    implements $CategoryErrorCopyWith<$Res> {
  factory _$$_CategoryErrorCopyWith(
          _$_CategoryError value, $Res Function(_$_CategoryError) then) =
      __$$_CategoryErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CategoryErrorCopyWithImpl<$Res>
    extends _$CategoryErrorCopyWithImpl<$Res, _$_CategoryError>
    implements _$$_CategoryErrorCopyWith<$Res> {
  __$$_CategoryErrorCopyWithImpl(
      _$_CategoryError _value, $Res Function(_$_CategoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CategoryError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryError implements _CategoryError {
  _$_CategoryError({required this.message});

  factory _$_CategoryError.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryErrorFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'CategoryError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryErrorCopyWith<_$_CategoryError> get copyWith =>
      __$$_CategoryErrorCopyWithImpl<_$_CategoryError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryErrorToJson(
      this,
    );
  }
}

abstract class _CategoryError implements CategoryError {
  factory _CategoryError({required final String message}) = _$_CategoryError;

  factory _CategoryError.fromJson(Map<String, dynamic> json) =
      _$_CategoryError.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryErrorCopyWith<_$_CategoryError> get copyWith =>
      throw _privateConstructorUsedError;
}
