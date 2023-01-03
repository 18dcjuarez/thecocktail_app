// Enums (Storage key).
enum SharedPreferencesKey {
  token,
}

extension SharedPreferencesKeyExtension on SharedPreferencesKey {
  String get key {
    switch (this) {
      case SharedPreferencesKey.token:
        return 'token';
    }
  }
}
