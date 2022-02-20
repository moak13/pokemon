// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkExceptionsTearOff {
  const _$NetworkExceptionsTearOff();

  DefaultError defaultError(String error) {
    return DefaultError(
      error,
    );
  }
}

/// @nodoc
const $NetworkExceptions = _$NetworkExceptionsTearOff();

/// @nodoc
mixin _$NetworkExceptions {
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? defaultError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkExceptionsCopyWith<NetworkExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionsCopyWith<$Res> {
  factory $NetworkExceptionsCopyWith(
          NetworkExceptions value, $Res Function(NetworkExceptions) then) =
      _$NetworkExceptionsCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  _$NetworkExceptionsCopyWithImpl(this._value, this._then);

  final NetworkExceptions _value;
  // ignore: unused_field
  final $Res Function(NetworkExceptions) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(
      DefaultError _value, $Res Function(DefaultError) _then)
      : super(_value, (v) => _then(v as DefaultError));

  @override
  DefaultError get _value => super._value as DefaultError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DefaultError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DefaultError implements DefaultError {
  const _$DefaultError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'NetworkExceptions.defaultError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DefaultError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) defaultError,
  }) {
    return defaultError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? defaultError,
  }) {
    return defaultError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? defaultError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
  }) {
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
  }) {
    return defaultError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class DefaultError implements NetworkExceptions {
  const factory DefaultError(String error) = _$DefaultError;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      throw _privateConstructorUsedError;
}
