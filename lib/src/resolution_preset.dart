import 'dart:ui';

/// Available resolutions to render.
enum Resolution { low, medium, high, veryHigh }

/// @nodoc
extension StringOperators on Resolution {
  String get stringValue {
    return <Resolution, String>{
      Resolution.low: "low",
      Resolution.medium: "medium",
      Resolution.high: "high",
      Resolution.veryHigh: "veryHigh"
    }[this]!;
  }
}

/// @nodoc
String enumToString(Resolution o) => o.toString().split('.').last;

/// @nodoc
Resolution enumFromString<T>(String key) => Resolution.values
    .firstWhere((v) => key == enumToString(v), orElse: () => Resolution.low);

/// @nodoc
Size iOSImageSizeFromResolution(Resolution resolution) {
  switch (resolution) {
    case Resolution.low:
      return const Size(2732, 2048);
    case Resolution.medium:
      return const Size(2732, 2048);

    case Resolution.high:
      return const Size(2732, 2048);
    case Resolution.veryHigh:
      return const Size(2732, 2048);
  }
}
