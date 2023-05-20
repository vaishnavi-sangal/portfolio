import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle h() {
    return GoogleFonts.rubik(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  }

  static TextStyle e({required Color color}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    );
  }

  static TextStyle ei({double fontSize = 36, Color color = Colors.white}) {
    return GoogleFonts.rubikMoonrocks(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 36,
      letterSpacing: 2,
    );
  }

  static TextStyle normal() {
    return GoogleFonts.signikaNegative(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 17,
      letterSpacing: 1,
    );
  }

  static TextStyle comfortaaStyle() {
    return GoogleFonts.comfortaa(
        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.grey);
  }
}
