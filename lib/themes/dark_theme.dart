import 'package:fitbod_worksut_screen/themes/colors.dart';
import 'package:flutter/material.dart';


ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: backgroundMaterialColor,
    primary: brandMaterialColor,
    secondary: secondaryDarkMaterialColor,
    tertiary: tertiaryDarkMaterialColor,  
    secondaryContainer: textMaterialColor,
  ),
);
