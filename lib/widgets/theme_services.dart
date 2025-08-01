import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  final _box = GetStorage();
  final _key = 'isDarkMode';
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  void switchThemelight() {
    Get.changeThemeMode(ThemeMode.light);
    _saveThemeToBox(_loadThemeFromBox());
  }

  void switchThemedark() {
    Get.changeThemeMode(ThemeMode.dark);
    _saveThemeToBox(_loadThemeFromBox());
  }
}
