import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(
        // fontSize: 32,
        ),
    bodyMedium: GoogleFonts.pridi(),
    bodyLarge: GoogleFonts.pridi(),
    labelSmall: GoogleFonts.pridi(),
    labelMedium: GoogleFonts.pridi(),
    labelLarge: GoogleFonts.pridi(),
    titleSmall: GoogleFonts.pridi(),
    titleMedium: GoogleFonts.pridi(),
    titleLarge: GoogleFonts.pridi(),
    headlineSmall: GoogleFonts.pridi(),
    headlineMedium: GoogleFonts.pridi(),
    headlineLarge: GoogleFonts.pridi(),
    displaySmall: GoogleFonts.pridi(),
    displayMedium: GoogleFonts.pridi(),
    displayLarge: GoogleFonts.pridi(),
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
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(
        // fontSize: 30,
        ),
    bodyMedium: GoogleFonts.pridi(),
    bodyLarge: GoogleFonts.pridi(),
    labelSmall: GoogleFonts.pridi(),
    labelMedium: GoogleFonts.pridi(),
    labelLarge: GoogleFonts.pridi(),
    titleSmall: GoogleFonts.pridi(),
    titleMedium: GoogleFonts.pridi(),
    titleLarge: GoogleFonts.pridi(),
    headlineSmall: GoogleFonts.pridi(),
    headlineMedium: GoogleFonts.pridi(),
    headlineLarge: GoogleFonts.pridi(),
    displaySmall: GoogleFonts.pridi(),
    displayMedium: GoogleFonts.pridi(),
    displayLarge: GoogleFonts.pridi(),
),
);
