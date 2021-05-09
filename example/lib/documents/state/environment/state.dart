import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';

enum Environment {
  mock,
  production,
}

@freezed
class EnvironmentState with _$EnvironmentState {
  const factory EnvironmentState({
    required String deviceName,
    required String deviceModel,
    required String versionName,
    required String buildNumber,
    required Environment environment,
    required FeatureFlags features,
  }) = _EnvironmentState;
}

@freezed
class FeatureFlags with _$FeatureFlags {
  const factory FeatureFlags({
    required ExampleFeatureFlag example,
  }) = _FeatureFlags;
}

@freezed
class ExampleFeatureFlag with _$ExampleFeatureFlag {
  const factory ExampleFeatureFlag.modeA() = _ExampleFeatureFlagA;
  const factory ExampleFeatureFlag.modeB() = _ExampleFeatureFlagB;
}
