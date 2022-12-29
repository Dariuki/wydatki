// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddState {
  String get errorMessage => throw _privateConstructorUsedError;
  bool? get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStateCopyWith<AddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStateCopyWith<$Res> {
  factory $AddStateCopyWith(AddState value, $Res Function(AddState) then) =
      _$AddStateCopyWithImpl<$Res>;
  $Res call({String errorMessage, bool? saved});
}

/// @nodoc
class _$AddStateCopyWithImpl<$Res> implements $AddStateCopyWith<$Res> {
  _$AddStateCopyWithImpl(this._value, this._then);

  final AddState _value;
  // ignore: unused_field
  final $Res Function(AddState) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? saved = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddStateCopyWith<$Res> implements $AddStateCopyWith<$Res> {
  factory _$$_AddStateCopyWith(
          _$_AddState value, $Res Function(_$_AddState) then) =
      __$$_AddStateCopyWithImpl<$Res>;
  @override
  $Res call({String errorMessage, bool? saved});
}

/// @nodoc
class __$$_AddStateCopyWithImpl<$Res> extends _$AddStateCopyWithImpl<$Res>
    implements _$$_AddStateCopyWith<$Res> {
  __$$_AddStateCopyWithImpl(
      _$_AddState _value, $Res Function(_$_AddState) _then)
      : super(_value, (v) => _then(v as _$_AddState));

  @override
  _$_AddState get _value => super._value as _$_AddState;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? saved = freezed,
  }) {
    return _then(_$_AddState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AddState implements _AddState {
  _$_AddState({this.errorMessage = '', this.saved});

  @override
  @JsonKey()
  final String errorMessage;
  @override
  final bool? saved;

  @override
  String toString() {
    return 'AddState(errorMessage: $errorMessage, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddState &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.saved, saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(saved));

  @JsonKey(ignore: true)
  @override
  _$$_AddStateCopyWith<_$_AddState> get copyWith =>
      __$$_AddStateCopyWithImpl<_$_AddState>(this, _$identity);
}

abstract class _AddState implements AddState {
  factory _AddState({final String errorMessage, final bool? saved}) =
      _$_AddState;

  @override
  String get errorMessage;
  @override
  bool? get saved;
  @override
  @JsonKey(ignore: true)
  _$$_AddStateCopyWith<_$_AddState> get copyWith =>
      throw _privateConstructorUsedError;
}
