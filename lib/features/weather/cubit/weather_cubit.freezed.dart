// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherState {
  WeatherModel? get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call({WeatherModel? results, Status status, String? errorMessage});

  $WeatherModelCopyWith<$Res>? get results;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $WeatherModelCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call({WeatherModel? results, Status status, String? errorMessage});

  @override
  $WeatherModelCopyWith<$Res>? get results;
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, (v) => _then(v as _$_WeatherState));

  @override
  _$_WeatherState get _value => super._value as _$_WeatherState;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_WeatherState(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  _$_WeatherState(
      {this.results, this.status = Status.initial, this.errorMessage});

  @override
  final WeatherModel? results;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WeatherState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  factory _WeatherState(
      {final WeatherModel? results,
      final Status status,
      final String? errorMessage}) = _$_WeatherState;

  @override
  WeatherModel? get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
