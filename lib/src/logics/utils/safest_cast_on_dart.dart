// safest cast on dart

/// convert map value as int in a safest way
int asInt(Map<String, dynamic>? json, {String? key, int defaultValue = 0}) {
  Object? value;
  if (json == null) {
    return defaultValue;
  } else if (key == null) {
    value = json;
  } else {
    value = json[key];
  }

  if (value == null) {
    return defaultValue;
  } else if (value is int) {
    return value;
  } else if (value is double) {
    return value.toInt();
  } else if (value is bool) {
    return value ? 1 : 0;
  } else if (value is String) {
    return int.tryParse(value) ??
        double.tryParse(value)?.toInt() ??
        defaultValue;
  }
  return defaultValue;
}

/// convert map value as double in a safest way
double asDouble(Map<String, dynamic>? json,
    {String? key, double defaultValue = 0.0}) {
  Object? value;
  if (json == null) {
    return defaultValue;
  } else if (key == null) {
    value = json;
  } else {
    value = json[key];
  }

  if (value == null) {
    return defaultValue;
  } else if (value is double) {
    return value;
  } else if (value is int) {
    return value.toDouble();
  } else if (value is bool) {
    return value ? 1.0 : 0.0;
  } else if (value is String) {
    return double.tryParse(value) ?? defaultValue;
  }
  return defaultValue;
}

/// convert map value as bool in a safest way
bool asBool(Map<String, dynamic>? json,
    {String? key, bool defaultValue = false}) {
  Object? value;
  if (json == null) {
    return defaultValue;
  } else if (key == null) {
    value = json;
  } else {
    value = json[key];
  }

  if (value == null) {
    return defaultValue;
  } else if (value is bool) {
    return value;
  } else if (value is int) {
    return value == 1;
  } else if (value is double) {
    return value == 1;
  } else if (value is String) {
    return value == '1' || value.toLowerCase() == 'true';
  }
  return defaultValue;
}

/// convert map value as String in a safest way
String asString(Map<String, dynamic>? json,
    {String? key, String defaultValue = ''}) {
  Object? value;
  if (json == null) {
    return defaultValue;
  } else if (key == null) {
    value = json;
  } else {
    value = json[key];
  }

  if (value == null) {
    return defaultValue;
  } else if (value is String) {
    if (value.isEmpty) {
      return defaultValue;
    }
    return value;
  } else if (value is int) {
    return value.toString();
  } else if (value is double) {
    return value.toString();
  } else if (value is bool) {
    return value ? 'true' : 'false';
  }
  return defaultValue;
}

/// convert map value as String in a safest way
DateTime? asDateTime(Map<String, dynamic>? json, {String? key}) {
  final String rawDate = asString(json, key: key);

  return DateTime.tryParse(rawDate);
}

/// convert map value as map in a safest way
Map<String, dynamic> asMap(Map<String, dynamic>? json,
    {String? key, Map<String, dynamic>? defaultValue}) {
  Object? value;
  if (json == null) {
    return defaultValue ?? <String, dynamic>{};
  } else if (key == null) {
    value = json;
  } else {
    value = json[key];
  }

  if (value == null) {
    return defaultValue ?? <String, dynamic>{};
  } else if (value is Map<String, dynamic>) {
    return value;
  }
  return defaultValue ?? <String, dynamic>{};
}

/// convert map value as list in a safest way
List<dynamic> asList(Map<String, dynamic>? json,
    {String? key, List<dynamic>? defaultValue}) {
  Object? value;
  if (json == null) {
    return defaultValue ?? <dynamic>[];
  } else if (key == null) {
    value = json;
  } else {
    value = json[key];
  }

  if (value == null) {
    return defaultValue ?? <dynamic>[];
  } else if (value is List<dynamic>) {
    return value;
  }
  return defaultValue ?? <dynamic>[];
}
