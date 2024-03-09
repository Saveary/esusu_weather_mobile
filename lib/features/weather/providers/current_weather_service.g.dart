// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentWeatherHash() => r'7ce94465dbb0abad1e80096cdf1a1994f09a170e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [currentWeather].
@ProviderFor(currentWeather)
const currentWeatherProvider = CurrentWeatherFamily();

/// See also [currentWeather].
class CurrentWeatherFamily extends Family<AsyncValue<WeatherModel>> {
  /// See also [currentWeather].
  const CurrentWeatherFamily();

  /// See also [currentWeather].
  CurrentWeatherProvider call({
    required double latitude,
    required double longitude,
  }) {
    return CurrentWeatherProvider(
      latitude: latitude,
      longitude: longitude,
    );
  }

  @override
  CurrentWeatherProvider getProviderOverride(
    covariant CurrentWeatherProvider provider,
  ) {
    return call(
      latitude: provider.latitude,
      longitude: provider.longitude,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'currentWeatherProvider';
}

/// See also [currentWeather].
class CurrentWeatherProvider extends FutureProvider<WeatherModel> {
  /// See also [currentWeather].
  CurrentWeatherProvider({
    required double latitude,
    required double longitude,
  }) : this._internal(
          (ref) => currentWeather(
            ref as CurrentWeatherRef,
            latitude: latitude,
            longitude: longitude,
          ),
          from: currentWeatherProvider,
          name: r'currentWeatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentWeatherHash,
          dependencies: CurrentWeatherFamily._dependencies,
          allTransitiveDependencies:
              CurrentWeatherFamily._allTransitiveDependencies,
          latitude: latitude,
          longitude: longitude,
        );

  CurrentWeatherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latitude,
    required this.longitude,
  }) : super.internal();

  final double latitude;
  final double longitude;

  @override
  Override overrideWith(
    FutureOr<WeatherModel> Function(CurrentWeatherRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentWeatherProvider._internal(
        (ref) => create(ref as CurrentWeatherRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  @override
  FutureProviderElement<WeatherModel> createElement() {
    return _CurrentWeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentWeatherProvider &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latitude.hashCode);
    hash = _SystemHash.combine(hash, longitude.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CurrentWeatherRef on FutureProviderRef<WeatherModel> {
  /// The parameter `latitude` of this provider.
  double get latitude;

  /// The parameter `longitude` of this provider.
  double get longitude;
}

class _CurrentWeatherProviderElement extends FutureProviderElement<WeatherModel>
    with CurrentWeatherRef {
  _CurrentWeatherProviderElement(super.provider);

  @override
  double get latitude => (origin as CurrentWeatherProvider).latitude;
  @override
  double get longitude => (origin as CurrentWeatherProvider).longitude;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
