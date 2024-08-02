// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'precipitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Precipitation _$PrecipitationFromJson(Map<String, dynamic> json) {
  return _Precipitation.fromJson(json);
}

/// @nodoc
mixin _$Precipitation {
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrecipitationCopyWith<Precipitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrecipitationCopyWith<$Res> {
  factory $PrecipitationCopyWith(
          Precipitation value, $Res Function(Precipitation) then) =
      _$PrecipitationCopyWithImpl<$Res, Precipitation>;
  @useResult
  $Res call({String? main, String? description});
}

/// @nodoc
class _$PrecipitationCopyWithImpl<$Res, $Val extends Precipitation>
    implements $PrecipitationCopyWith<$Res> {
  _$PrecipitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrecipitationImplCopyWith<$Res>
    implements $PrecipitationCopyWith<$Res> {
  factory _$$PrecipitationImplCopyWith(
          _$PrecipitationImpl value, $Res Function(_$PrecipitationImpl) then) =
      __$$PrecipitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? main, String? description});
}

/// @nodoc
class __$$PrecipitationImplCopyWithImpl<$Res>
    extends _$PrecipitationCopyWithImpl<$Res, _$PrecipitationImpl>
    implements _$$PrecipitationImplCopyWith<$Res> {
  __$$PrecipitationImplCopyWithImpl(
      _$PrecipitationImpl _value, $Res Function(_$PrecipitationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PrecipitationImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrecipitationImpl implements _Precipitation {
  const _$PrecipitationImpl({this.main, this.description});

  factory _$PrecipitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrecipitationImplFromJson(json);

  @override
  final String? main;
  @override
  final String? description;

  @override
  String toString() {
    return 'Precipitation(main: $main, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrecipitationImpl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrecipitationImplCopyWith<_$PrecipitationImpl> get copyWith =>
      __$$PrecipitationImplCopyWithImpl<_$PrecipitationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrecipitationImplToJson(
      this,
    );
  }
}

abstract class _Precipitation implements Precipitation {
  const factory _Precipitation(
      {final String? main, final String? description}) = _$PrecipitationImpl;

  factory _Precipitation.fromJson(Map<String, dynamic> json) =
      _$PrecipitationImpl.fromJson;

  @override
  String? get main;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PrecipitationImplCopyWith<_$PrecipitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
