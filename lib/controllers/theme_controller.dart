import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();
  final theme = "system".obs;
  final store = GetStorage();
  late ThemeMode _themeMode; // 앱이 초기화되는 시점에 null 체크

  ThemeMode get themeMode => _themeMode;
  String get currentTheme => theme.value;

  Future<void> setThemeMode(String value) async {
    // Future<void> ???
    theme.value = value;
    _themeMode = getThemeModeFromString(value);
  }

  ThemeMode getThemeModeFromString(String themeString) {
    ThemeMode _setThemeMode = ThemeMode.system;

    if (themeString == 'light') {
      _setThemeMode = ThemeMode.light;
    }

    if (themeString == 'light') {
      _setThemeMode = ThemeMode.dark;
    }

    return _setThemeMode;
  }

  getThemeModeFromStore() async {
    String _themeString = store.read('theme') ?? 'system';
    setThemeMode(_themeString);
  }

  // darkmode가 setting되어 있는지 check
  bool get isDarkModeOn {
    if (currentTheme == 'system') {
      if (WidgetsBinding.instance!.window.platformBrightness ==
          Brightness.dark) {
        return true;
      }
    }

    if (currentTheme == 'dark') {
      return true;
    }

    return false;
  }
}
