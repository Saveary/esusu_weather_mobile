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
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get timezone_abbreviation => throw _privateConstructorUsedError;
  CurrentWeatherModel? get current => throw _privateConstructorUsedError;

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
      {double? latitude,
      double? longitude,
      double? elevation,
      String? timezone,
      String? timezone_abbreviation,
      CurrentWeatherModel? current});

  $CurrentWeatherModelCopyWith<$Res>? get current;
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
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? elevation = freezed,
    Object? timezone = freezed,
    Object? timezone_abbreviation = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_abbreviation: freezed == timezone_abbreviation
          ? _value.timezone_abbreviation
          : timezone_abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherModelCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentWeatherModelCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
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
      {double? latitude,
      double? longitude,
      double? elevation,
      String? timezone,
      String? timezone_abbreviation,
      CurrentWeatherModel? current});

  @override
  $CurrentWeatherModelCopyWith<$Res>? get current;
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
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? elevation = freezed,
    Object? timezone = freezed,
    Object? timezone_abbreviation = freezed,
    Object? current = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_abbreviation: freezed == timezone_abbreviation
          ? _value.timezone_abbreviation
          : timezone_abbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  _$WeatherModelImpl(
      {this.latitude,
      this.longitude,
      this.elevation,
      this.timezone,
      this.timezone_abbreviation,
      this.current});

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? elevation;
  @override
  final String? timezone;
  @override
  final String? timezone_abbreviation;
  @override
  final CurrentWeatherModel? current;

  @override
  String toString() {
    return 'WeatherModel(latitude: $latitude, longitude: $longitude, elevation: $elevation, timezone: $timezone, timezone_abbreviation: $timezone_abbreviation, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezone_abbreviation, timezone_abbreviation) ||
                other.timezone_abbreviation == timezone_abbreviation) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, elevation,
      timezone, timezone_abbreviation, current);

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
  factory _WeatherModel(
      {final double? latitude,
      final double? longitude,
      final double? elevation,
      final String? timezone,
      final String? timezone_abbreviation,
      final CurrentWeatherModel? current}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get elevation;
  @override
  String? get timezone;
  @override
  String? get timezone_abbreviation;
  @override
  CurrentWeatherModel? get current;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherModel {
  DateTime? get time => throw _privateConstructorUsedError;
  double? get temperature_2m => throw _privateConstructorUsedError;
  double? get apparent_temperature => throw _privateConstructorUsedError;
  double? get wind_speed_10m => throw _privateConstructorUsedError;
  int? get wind_direction_10m => throw _privateConstructorUsedError;
  int? get weather_code => throw _privateConstructorUsedError;
  int? get relative_humidity_2m => throw _privateConstructorUsedError;
  int? get is_day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherModelCopyWith<CurrentWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherModelCopyWith<$Res> {
  factory $CurrentWeatherModelCopyWith(
          CurrentWeatherModel value, $Res Function(CurrentWeatherModel) then) =
      _$CurrentWeatherModelCopyWithImpl<$Res, CurrentWeatherModel>;
  @useResult
  $Res call(
      {DateTime? time,
      double? temperature_2m,
      double? apparent_temperature,
      double? wind_speed_10m,
      int? wind_direction_10m,
      int? weather_code,
      int? relative_humidity_2m,
      int? is_day});
}

/// @nodoc
class _$CurrentWeatherModelCopyWithImpl<$Res, $Val extends CurrentWeatherModel>
    implements $CurrentWeatherModelCopyWith<$Res> {
  _$CurrentWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m = freezed,
    Object? apparent_temperature = freezed,
    Object? wind_speed_10m = freezed,
    Object? wind_direction_10m = freezed,
    Object? weather_code = freezed,
    Object? relative_humidity_2m = freezed,
    Object? is_day = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double?,
      apparent_temperature: freezed == apparent_temperature
          ? _value.apparent_temperature
          : apparent_temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_speed_10m: freezed == wind_speed_10m
          ? _value.wind_speed_10m
          : wind_speed_10m // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_direction_10m: freezed == wind_direction_10m
          ? _value.wind_direction_10m
          : wind_direction_10m // ignore: cast_nullable_to_non_nullable
              as int?,
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as int?,
      relative_humidity_2m: freezed == relative_humidity_2m
          ? _value.relative_humidity_2m
          : relative_humidity_2m // ignore: cast_nullable_to_non_nullable
              as int?,
      is_day: freezed == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWeatherModelImplCopyWith<$Res>
    implements $CurrentWeatherModelCopyWith<$Res> {
  factory _$$CurrentWeatherModelImplCopyWith(_$CurrentWeatherModelImpl value,
          $Res Function(_$CurrentWeatherModelImpl) then) =
      __$$CurrentWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? time,
      double? temperature_2m,
      double? apparent_temperature,
      double? wind_speed_10m,
      int? wind_direction_10m,
      int? weather_code,
      int? relative_humidity_2m,
      int? is_day});
}

/// @nodoc
class __$$CurrentWeatherModelImplCopyWithImpl<$Res>
    extends _$CurrentWeatherModelCopyWithImpl<$Res, _$CurrentWeatherModelImpl>
    implements _$$CurrentWeatherModelImplCopyWith<$Res> {
  __$$CurrentWeatherModelImplCopyWithImpl(_$CurrentWeatherModelImpl _value,
      $Res Function(_$CurrentWeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m = freezed,
    Object? apparent_temperature = freezed,
    Object? wind_speed_10m = freezed,
    Object? wind_direction_10m = freezed,
    Object? weather_code = freezed,
    Object? relative_humidity_2m = freezed,
    Object? is_day = freezed,
  }) {
    return _then(_$CurrentWeatherModelImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double?,
      apparent_temperature: freezed == apparent_temperature
          ? _value.apparent_temperature
          : apparent_temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_speed_10m: freezed == wind_speed_10m
          ? _value.wind_speed_10m
          : wind_speed_10m // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_direction_10m: freezed == wind_direction_10m
          ? _value.wind_direction_10m
          : wind_direction_10m // ignore: cast_nullable_to_non_nullable
              as int?,
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as int?,
      relative_humidity_2m: freezed == relative_humidity_2m
          ? _value.relative_humidity_2m
          : relative_humidity_2m // ignore: cast_nullable_to_non_nullable
              as int?,
      is_day: freezed == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherModelImpl implements _CurrentWeatherModel {
  _$CurrentWeatherModelImpl(
      {this.time,
      this.temperature_2m,
      this.apparent_temperature,
      this.wind_speed_10m,
      this.wind_direction_10m,
      this.weather_code,
      this.relative_humidity_2m,
      this.is_day});

  factory _$CurrentWeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherModelImplFromJson(json);

  @override
  final DateTime? time;
  @override
  final double? temperature_2m;
  @override
  final double? apparent_temperature;
  @override
  final double? wind_speed_10m;
  @override
  final int? wind_direction_10m;
  @override
  final int? weather_code;
  @override
  final int? relative_humidity_2m;
  @override
  final int? is_day;

  @override
  String toString() {
    return 'CurrentWeatherModel(time: $time, temperature_2m: $temperature_2m, apparent_temperature: $apparent_temperature, wind_speed_10m: $wind_speed_10m, wind_direction_10m: $wind_direction_10m, weather_code: $weather_code, relative_humidity_2m: $relative_humidity_2m, is_day: $is_day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherModelImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature_2m, temperature_2m) ||
                other.temperature_2m == temperature_2m) &&
            (identical(other.apparent_temperature, apparent_temperature) ||
                other.apparent_temperature == apparent_temperature) &&
            (identical(other.wind_speed_10m, wind_speed_10m) ||
                other.wind_speed_10m == wind_speed_10m) &&
            (identical(other.wind_direction_10m, wind_direction_10m) ||
                other.wind_direction_10m == wind_direction_10m) &&
            (identical(other.weather_code, weather_code) ||
                other.weather_code == weather_code) &&
            (identical(other.relative_humidity_2m, relative_humidity_2m) ||
                other.relative_humidity_2m == relative_humidity_2m) &&
            (identical(other.is_day, is_day) || other.is_day == is_day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      temperature_2m,
      apparent_temperature,
      wind_speed_10m,
      wind_direction_10m,
      weather_code,
      relative_humidity_2m,
      is_day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherModelImplCopyWith<_$CurrentWeatherModelImpl> get copyWith =>
      __$$CurrentWeatherModelImplCopyWithImpl<_$CurrentWeatherModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherModel implements CurrentWeatherModel {
  factory _CurrentWeatherModel(
      {final DateTime? time,
      final double? temperature_2m,
      final double? apparent_temperature,
      final double? wind_speed_10m,
      final int? wind_direction_10m,
      final int? weather_code,
      final int? relative_humidity_2m,
      final int? is_day}) = _$CurrentWeatherModelImpl;

  factory _CurrentWeatherModel.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherModelImpl.fromJson;

  @override
  DateTime? get time;
  @override
  double? get temperature_2m;
  @override
  double? get apparent_temperature;
  @override
  double? get wind_speed_10m;
  @override
  int? get wind_direction_10m;
  @override
  int? get weather_code;
  @override
  int? get relative_humidity_2m;
  @override
  int? get is_day;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherModelImplCopyWith<_$CurrentWeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
