import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:push_potfolio/theme/color.dart';

class MyStyle {
  /// Margin and padding
 static const EdgeInsets symmetricPadding = const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      );
  /// TextField
  static OutlineInputBorder textFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      10,
    ),
    borderSide: BorderSide(
      color: MyColor.graphColor1,
    ),
  );
  static OutlineInputBorder enabledTextFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      10,
    ),
    borderSide: BorderSide(
      color: MyColor.blackColor,
    ),
  );
  static OutlineInputBorder focusedTextFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      10,
    ),
    borderSide: BorderSide(
      color: MyColor.blackColor,
    ),
  );
  static OutlineInputBorder errorTextFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      10,
    ),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );

  /// Textstyle
  static TextStyle spectralFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.spectral(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle robotoFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.spectral(
      fontSize: fontSize,
      color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle openSansFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.openSans(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle montserratFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle ptSansFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.ptSans(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle poppinsFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle nunitoSansFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.nunitoSans(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle latoFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.lato(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle pacificoFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.pacifico(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle caveatFont(
      double fontSize, Color fontColor, FontWeight fontWeight) {
    return GoogleFonts.caveat(
      fontSize: fontSize,
      // color: fontColor,
      fontWeight: fontWeight,
    );
  }
}
