import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  bool _isDarkModeEnabled = false;
  bool _enableSoundEffect = true;

  bool initialized = false;

  bool get isDarkModeEnabled {
    if (!initialized) {
      SharedPreferences.getInstance().then((value) {
        if (value.containsKey("isDarkModeEnabled")) {
          _isDarkModeEnabled = value.getBool("isDarkModeEnabled");
        } else {
          value.setBool("isDarkModeEnabled", false);
          _isDarkModeEnabled = value.getBool("isDarkModeEnabled");
        }
        if (value.containsKey("enableSoundEffect")) {
          _enableSoundEffect = value.getBool("enableSoundEffect");
        } else {
          value.setBool("enableSoundEffect", true);
          _enableSoundEffect = value.getBool("enableSoundEffect");
        }
        initialized = true;
        notifyListeners();
      });
    }

    return _isDarkModeEnabled;
  }

  bool get enableSoundEffect {
    return _enableSoundEffect;
  }

  void toggleThemeMode() {
    _isDarkModeEnabled = !_isDarkModeEnabled;
    SharedPreferences.getInstance().then(
        (value) => value.setBool("isDarkModeEnabled", _isDarkModeEnabled));
    notifyListeners();
  }

  void toggleSoundEffect() {
    _enableSoundEffect = !_enableSoundEffect;
    SharedPreferences.getInstance()
        .then((value) => value.setBool("enableSoundEffect", enableSoundEffect));
    notifyListeners();
  }
}
