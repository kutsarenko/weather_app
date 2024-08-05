// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  MainModel? get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<Precipitation> get precipation =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String? get locationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {MainModel? main,
      @JsonKey(name: 'weather') List<Precipitation> precipation,
      @JsonKey(name: 'name') String? locationName});

  $MainModelCopyWith<$Res>? get main;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? precipation = null,
    Object? locationName = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      precipation: null == precipation
          ? _value.precipation
          : precipation // ignore: cast_nullable_to_non_nullable
              as List<Precipitation>,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainModelCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainModelCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainModel? main,
      @JsonKey(name: 'weather') List<Precipitation> precipation,
      @JsonKey(name: 'name') String? locationName});

  @override
  $MainModelCopyWith<$Res>? get main;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? precipation = null,
    Object? locationName = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      precipation: null == precipation
          ? _value._precipation
          : precipation // ignore: cast_nullable_to_non_nullable
              as List<Precipitation>,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl(
      {this.main,
      @JsonKey(name: 'weather')
      final List<Precipitation> precipation = const [],
      @JsonKey(name: 'name') this.locationName})
      : _precipation = precipation;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final MainModel? main;
  final List<Precipitation> _precipation;
  @override
  @JsonKey(name: 'weather')
  List<Precipitation> get precipation {
    if (_precipation is EqualUnmodifiableListView) return _precipation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipation);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'name')
  final String? locationName;

  @override
  String toString() {
    return 'WeatherModel(main: $main, precipation: $precipation, locationName: $locationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality()
                .equals(other._precipation, _precipation) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main,
      const DeepCollectionEquality().hash(_precipation), locationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final MainModel? main,
      @JsonKey(name: 'weather') final List<Precipitation> precipation,
      @JsonKey(name: 'name') final String? locationName}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  MainModel? get main;
  @override
  @JsonKey(name: 'weather')
  List<Precipitation> get precipation;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String? get locationName;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
