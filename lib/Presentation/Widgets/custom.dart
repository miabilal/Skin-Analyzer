import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeData = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(),
  primaryColor: Colors.deepPurple,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: Colors.deepPurpleAccent),
);
