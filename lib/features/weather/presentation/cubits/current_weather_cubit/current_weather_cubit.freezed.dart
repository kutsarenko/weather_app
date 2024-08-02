// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentWeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherModel weather) fetchSuccess,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherModel weather)? fetchSuccess,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherModel weather)? fetchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentWeatherLoadingState value) loading,
    required TResult Function(CurrentWeatherSuccessState value) fetchSuccess,
    required TResult Function(CurrentWeatherErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentWeatherLoadingState value)? loading,
    TResult? Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult? Function(CurrentWeatherErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentWeatherLoadingState value)? loading,
    TResult Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult Function(CurrentWeatherErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherStateCopyWith<$Res> {
  factory $CurrentWeatherStateCopyWith(
          CurrentWeatherState value, $Res Function(CurrentWeatherState) then) =
      _$CurrentWeatherStateCopyWithImpl<$Res, CurrentWeatherState>;
}

/// @nodoc
class _$CurrentWeatherStateCopyWithImpl<$Res, $Val extends CurrentWeatherState>
    implements $CurrentWeatherStateCopyWith<$Res> {
  _$CurrentWeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentWeatherLoadingStateImplCopyWith<$Res> {
  factory _$$CurrentWeatherLoadingStateImplCopyWith(
          _$CurrentWeatherLoadingStateImpl value,
          $Res Function(_$CurrentWeatherLoadingStateImpl) then) =
      __$$CurrentWeatherLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentWeatherLoadingStateImplCopyWithImpl<$Res>
    extends _$CurrentWeatherStateCopyWithImpl<$Res,
        _$CurrentWeatherLoadingStateImpl>
    implements _$$CurrentWeatherLoadingStateImplCopyWith<$Res> {
  __$$CurrentWeatherLoadingStateImplCopyWithImpl(
      _$CurrentWeatherLoadingStateImpl _value,
      $Res Function(_$CurrentWeatherLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentWeatherLoadingStateImpl implements CurrentWeatherLoadingState {
  const _$CurrentWeatherLoadingStateImpl();

  @override
  String toString() {
    return 'CurrentWeatherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherModel weather) fetchSuccess,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherModel weather)? fetchSuccess,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherModel weather)? fetchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentWeatherLoadingState value) loading,
    required TResult Function(CurrentWeatherSuccessState value) fetchSuccess,
    required TResult Function(CurrentWeatherErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentWeatherLoadingState value)? loading,
    TResult? Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult? Function(CurrentWeatherErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentWeatherLoadingState value)? loading,
    TResult Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult Function(CurrentWeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CurrentWeatherLoadingState implements CurrentWeatherState {
  const factory CurrentWeatherLoadingState() = _$CurrentWeatherLoadingStateImpl;
}

/// @nodoc
abstract class _$$CurrentWeatherSuccessStateImplCopyWith<$Res> {
  factory _$$CurrentWeatherSuccessStateImplCopyWith(
          _$CurrentWeatherSuccessStateImpl value,
          $Res Function(_$CurrentWeatherSuccessStateImpl) then) =
      __$$CurrentWeatherSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherModel weather});

  $WeatherModelCopyWith<$Res> get weather;
}

/// @nodoc
class __$$CurrentWeatherSuccessStateImplCopyWithImpl<$Res>
    extends _$CurrentWeatherStateCopyWithImpl<$Res,
        _$CurrentWeatherSuccessStateImpl>
    implements _$$CurrentWeatherSuccessStateImplCopyWith<$Res> {
  __$$CurrentWeatherSuccessStateImplCopyWithImpl(
      _$CurrentWeatherSuccessStateImpl _value,
      $Res Function(_$CurrentWeatherSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$CurrentWeatherSuccessStateImpl(
      null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res> get weather {
    return $WeatherModelCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$CurrentWeatherSuccessStateImpl implements CurrentWeatherSuccessState {
  const _$CurrentWeatherSuccessStateImpl(this.weather);

  @override
  final WeatherModel weather;

  @override
  String toString() {
    return 'CurrentWeatherState.fetchSuccess(weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherSuccessStateImpl &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherSuccessStateImplCopyWith<_$CurrentWeatherSuccessStateImpl>
      get copyWith => __$$CurrentWeatherSuccessStateImplCopyWithImpl<
          _$CurrentWeatherSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherModel weather) fetchSuccess,
    required TResult Function(String error) error,
  }) {
    return fetchSuccess(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherModel weather)? fetchSuccess,
    TResult? Function(String error)? error,
  }) {
    return fetchSuccess?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherModel weather)? fetchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentWeatherLoadingState value) loading,
    required TResult Function(CurrentWeatherSuccessState value) fetchSuccess,
    required TResult Function(CurrentWeatherErrorState value) error,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentWeatherLoadingState value)? loading,
    TResult? Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult? Function(CurrentWeatherErrorState value)? error,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentWeatherLoadingState value)? loading,
    TResult Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult Function(CurrentWeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class CurrentWeatherSuccessState implements CurrentWeatherState {
  const factory CurrentWeatherSuccessState(final WeatherModel weather) =
      _$CurrentWeatherSuccessStateImpl;

  WeatherModel get weather;
  @JsonKey(ignore: true)
  _$$CurrentWeatherSuccessStateImplCopyWith<_$CurrentWeatherSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentWeatherErrorStateImplCopyWith<$Res> {
  factory _$$CurrentWeatherErrorStateImplCopyWith(
          _$CurrentWeatherErrorStateImpl value,
          $Res Function(_$CurrentWeatherErrorStateImpl) then) =
      __$$CurrentWeatherErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CurrentWeatherErrorStateImplCopyWithImpl<$Res>
    extends _$CurrentWeatherStateCopyWithImpl<$Res,
        _$CurrentWeatherErrorStateImpl>
    implements _$$CurrentWeatherErrorStateImplCopyWith<$Res> {
  __$$CurrentWeatherErrorStateImplCopyWithImpl(
      _$CurrentWeatherErrorStateImpl _value,
      $Res Function(_$CurrentWeatherErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CurrentWeatherErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentWeatherErrorStateImpl implements CurrentWeatherErrorState {
  const _$CurrentWeatherErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CurrentWeatherState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherErrorStateImplCopyWith<_$CurrentWeatherErrorStateImpl>
      get copyWith => __$$CurrentWeatherErrorStateImplCopyWithImpl<
          _$CurrentWeatherErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(WeatherModel weather) fetchSuccess,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherModel weather)? fetchSuccess,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherModel weather)? fetchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentWeatherLoadingState value) loading,
    required TResult Function(CurrentWeatherSuccessState value) fetchSuccess,
    required TResult Function(CurrentWeatherErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentWeatherLoadingState value)? loading,
    TResult? Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult? Function(CurrentWeatherErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentWeatherLoadingState value)? loading,
    TResult Function(CurrentWeatherSuccessState value)? fetchSuccess,
    TResult Function(CurrentWeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurrentWeatherErrorState implements CurrentWeatherState {
  const factory CurrentWeatherErrorState(final String error) =
      _$CurrentWeatherErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CurrentWeatherErrorStateImplCopyWith<_$CurrentWeatherErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
