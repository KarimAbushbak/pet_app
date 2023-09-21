
import 'package:pet_app/core/extensions/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '';
import '../../../../constants.dart';

class AppSettingsSharedPreferences {
  static final _instance = AppSettingsSharedPreferences._internal();
  late SharedPreferences _sharedPreferences;

  AppSettingsSharedPreferences._internal();

  factory AppSettingsSharedPreferences() {
    return _instance;
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  clear() {
    _sharedPreferences.clear();
  }

  Future<void> saveViewedOutBoarding() async {
    await _sharedPreferences.setBool(KeyConstants.outBoardingViewedKey, true);
  }

  bool get outBoardingViewed =>
      _sharedPreferences.getBool(KeyConstants.outBoardingViewedKey).onNull();

  Future<void> setDefaultLocale(String lang) async {
    await _sharedPreferences.setString(KeyConstants.localeKey, lang);
  }

  String get defaultLocale =>
      _sharedPreferences.getString(KeyConstants.localeKey).parseLocale();




}

