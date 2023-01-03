import 'package:shared_preferences/shared_preferences.dart';
import 'package:thecocktaildb_app/src/data/enums/shared_preferences_enum.dart';

class SharedPreferencesService {
  SharedPreferencesService._internal();

  static SharedPreferencesService get instance => _instance;

  static final SharedPreferencesService _instance =
      SharedPreferencesService._internal();

  Future<String?> getData(SharedPreferencesKey key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(key.key);
    } catch (exception) {
      return null;
    }
  }

  Future<bool> saveData(SharedPreferencesKey key, String value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setString(key.key, value);
    } catch (exception) {
      return false;
    }
  }

  Future<bool> deleteData(SharedPreferencesKey key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.remove(key.key);
    } catch (exception) {
      return false;
    }
  }
}
