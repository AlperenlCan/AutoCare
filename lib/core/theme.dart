import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

const darkColors = {
  "primary": Color.fromRGBO(253, 127, 38, 1),
  "onPrimary": Color.fromARGB(255, 255, 255, 255),
  "secondary": Color.fromARGB(255, 241, 241, 241),
  "onSecondary": Color.fromARGB(255, 0, 0, 0),
  "surface": Color.fromARGB(255, 207, 102, 16),
  "onSurface": Color.fromARGB(255, 0, 0, 0),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

const colors = {
  "primary": Color.fromRGBO(253, 127, 38, 1),
  "onPrimary": Color.fromARGB(255, 241, 241, 241),
  "secondary": Color.fromARGB(255, 0, 0, 0),
  "onSecondary": Color.fromARGB(255, 0, 0, 0),
  "surface": Color.fromARGB(255, 255, 255, 255),
  "onSurface": Color.fromARGB(255, 0, 0, 0),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
);
