import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const Color lightBlue = Color(0xFF3DA9F2);
  static const Color darkBlue = Color(0xFF1E77B2);
  static const Color redSnackbar = Color(0xFFD70000);
  static const Color greenSnackbar = Color(0xFF00BE2A);

  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: lightBlue,
    padding: const EdgeInsets.all(20),
    textStyle: GoogleFonts.montserrat(
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(13),
    ),
  );

  static ButtonStyle secondaryButton = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: lightBlue,
    padding: const EdgeInsets.all(20),
    textStyle: GoogleFonts.montserrat(
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(13),
    ),
    side: const BorderSide(
      width: 1,
      color: lightBlue,
    ),
  );
}
