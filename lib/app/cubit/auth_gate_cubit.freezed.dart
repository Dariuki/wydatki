// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_gate_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthGateStateTearOff {
  const _$AuthGateStateTearOff();

  _AuthGateState call({User? user, bool? isLoading, String? errorMessage}) {
    return _AuthGateState(
      user: user,
      isLoading: isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $AuthGateState = _$AuthGateStateTearOff();

/// @nodoc
mixin _$AuthGateState {
  User? get user => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthGateStateCopyWith<AuthGateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthGateStateCopyWith<$Res> {
  factory $AuthGateStateCopyWith(
          AuthGateState value, $Res Function(AuthGateState) then) =
      _$AuthGateStateCopyWithImpl<$Res>;
  $Res call({User? user, bool? isLoading, String? errorMessage});
}

/// @nodoc
class _$AuthGateStateCopyWithImpl<$Res>
    implements $AuthGateStateCopyWith<$Res> {
  _$AuthGateStateCopyWithImpl(this._value, this._then);

  final AuthGateState _value;
  // ignore: unused_field
  final $Res Function(AuthGateState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthGateStateCopyWith<$Res>
    implements $AuthGateStateCopyWith<$Res> {
  factory _$AuthGateStateCopyWith(
          _AuthGateState value, $Res Function(_AuthGateState) then) =
      __$AuthGateStateCopyWithImpl<$Res>;
  @override
  $Res call({User? user, bool? isLoading, String? errorMessage});
}

/// @nodoc
class __$AuthGateStateCopyWithImpl<$Res>
    extends _$AuthGateStateCopyWithImpl<$Res>
    implements _$AuthGateStateCopyWith<$Res> {
  __$AuthGateStateCopyWithImpl(
      _AuthGateState _value, $Res Function(_AuthGateState) _then)
      : super(_value, (v) => _then(v as _AuthGateState));

  @override
  _AuthGateState get _value => super._value as _AuthGateState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_AuthGateState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthGateState implements _AuthGateState {
  _$_AuthGateState({this.user, this.isLoading, this.errorMessage});

  @override
  final User? user;
  @override
  final bool? isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthGateState(user: $user, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthGateState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$AuthGateStateCopyWith<_AuthGateState> get copyWith =>
      __$AuthGateStateCopyWithImpl<_AuthGateState>(this, _$identity);
}

abstract class _AuthGateState implements AuthGateState {
  factory _AuthGateState({User? user, bool? isLoading, String? errorMessage}) =
      _$_AuthGateState;

  @override
  User? get user;
  @override
  bool? get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$AuthGateStateCopyWith<_AuthGateState> get copyWith =>
      throw _privateConstructorUsedError;
}
