import 'package:flutter/material.dart';

//* Dark Mode colors
// const Color brandColor = Color(0xFFF72585);
const Color brandColor = Color(0xFF7c162e);
const Color backgroundColor = Color(0xFF171717);
const Color secondaryDarkColor = Color(0xFF444444);
const Color tertiaryDarkColor = Color(0xFF3a015c);
const Color textColor = Color(0xFFB3B3B3);

final MaterialColor brandMaterialColor = MaterialColor(
  brandColor.value,
  <int, Color>{
    50: brandColor.withOpacity(0.1),
    100: brandColor.withOpacity(0.2),
    200: brandColor.withOpacity(0.3),
    300: brandColor.withOpacity(0.4),
    400: brandColor.withOpacity(0.5),
    500: brandColor.withOpacity(0.6),
    600: brandColor.withOpacity(0.7),
    700: brandColor.withOpacity(0.8),
    800: brandColor.withOpacity(0.9),
    900: brandColor.withOpacity(1.0),
  },
);
final MaterialColor secondaryDarkMaterialColor = MaterialColor(
  secondaryDarkColor.value,
  <int, Color>{
    50: secondaryDarkColor.withOpacity(0.1),
    100: secondaryDarkColor.withOpacity(0.2),
    200: secondaryDarkColor.withOpacity(0.3),
    300: secondaryDarkColor.withOpacity(0.4),
    400: secondaryDarkColor.withOpacity(0.5),
    500: secondaryDarkColor.withOpacity(0.6),
    600: secondaryDarkColor.withOpacity(0.7),
    700: secondaryDarkColor.withOpacity(0.8),
    800: secondaryDarkColor.withOpacity(0.9),
    900: secondaryDarkColor.withOpacity(1.0),
  },
);
final MaterialColor tertiaryDarkMaterialColor = MaterialColor(
  tertiaryDarkColor.value,
  <int, Color>{
    50: tertiaryDarkColor.withOpacity(0.1),
    100: tertiaryDarkColor.withOpacity(0.2),
    200: tertiaryDarkColor.withOpacity(0.3),
    300: tertiaryDarkColor.withOpacity(0.4),
    400: tertiaryDarkColor.withOpacity(0.5),
    500: tertiaryDarkColor.withOpacity(0.6),
    600: tertiaryDarkColor.withOpacity(0.7),
    700: tertiaryDarkColor.withOpacity(0.8),
    800: tertiaryDarkColor.withOpacity(0.9),
    900: tertiaryDarkColor.withOpacity(1.0),
  },
);
final MaterialColor textMaterialColor = MaterialColor(
  textColor.value,
  <int, Color>{
    50: textColor.withOpacity(0.1),
    100: textColor.withOpacity(0.2),
    200: textColor.withOpacity(0.3),
    300: textColor.withOpacity(0.4),
    400: textColor.withOpacity(0.5),
    500: textColor.withOpacity(0.6),
    600: textColor.withOpacity(0.7),
    700: textColor.withOpacity(0.8),
    800: textColor.withOpacity(0.9),
    900: textColor.withOpacity(1.0),
  },
);

final MaterialColor backgroundMaterialColor = MaterialColor(
  backgroundColor.value,
  <int, Color>{
    50: backgroundColor.withOpacity(0.1),
    100: backgroundColor.withOpacity(0.2),
    200: backgroundColor.withOpacity(0.3),
    300: backgroundColor.withOpacity(0.4),
    400: backgroundColor.withOpacity(0.5),
    500: backgroundColor.withOpacity(0.6),
    600: backgroundColor.withOpacity(0.7),
    700: backgroundColor.withOpacity(0.8),
    800: backgroundColor.withOpacity(0.9),
    900: backgroundColor.withOpacity(1.0),
  },
);

//* Light Mode colors
//*const Color brandColorLight = Color(0xFFF66963);
const Color brandColorLight = Color(0xFFF66963);
const Color backgroundColorLight = Color(0xFFF7EBFD);
const Color secondaryLightColor = Color(0xFFEABFFA);
const Color tertiaryLightColor = Color(0xFFDC93F6);
const Color textColorLight = Color(0xFF333333);

final MaterialColor brandMaterialColorLight = MaterialColor(
  brandColorLight.value,
  <int, Color>{
    50: brandColorLight.withOpacity(0.1),
    100: brandColorLight.withOpacity(0.2),
    200: brandColorLight.withOpacity(0.3),
    300: brandColorLight.withOpacity(0.4),
    400: brandColorLight.withOpacity(0.5),
    500: brandColorLight.withOpacity(0.6),
    600: brandColorLight.withOpacity(0.7),
    700: brandColorLight.withOpacity(0.8),
    800: brandColorLight.withOpacity(0.9),
    900: brandColorLight.withOpacity(1.0),
  },
);

final MaterialColor secondaryMaterialColorLight = MaterialColor(
  secondaryLightColor.value,
  <int, Color>{
    50: secondaryLightColor.withOpacity(0.1),
    100: secondaryLightColor.withOpacity(0.2),
    200: secondaryLightColor.withOpacity(0.3),
    300: secondaryLightColor.withOpacity(0.4),
    400: secondaryLightColor.withOpacity(0.5),
    500: secondaryLightColor.withOpacity(0.6),
    600: secondaryLightColor.withOpacity(0.7),
    700: secondaryLightColor.withOpacity(0.8),
    800: secondaryLightColor.withOpacity(0.9),
    900: secondaryLightColor.withOpacity(1.0),
  },
);

final MaterialColor tertiaryMaterialColorLight = MaterialColor(
  tertiaryLightColor.value,
  <int, Color>{
    50: tertiaryLightColor.withOpacity(0.1),
    100: tertiaryLightColor.withOpacity(0.2),
    200: tertiaryLightColor.withOpacity(0.3),
    300: tertiaryLightColor.withOpacity(0.4),
    400: tertiaryLightColor.withOpacity(0.5),
    500: tertiaryLightColor.withOpacity(0.6),
    600: tertiaryLightColor.withOpacity(0.7),
    700: tertiaryLightColor.withOpacity(0.8),
    800: tertiaryLightColor.withOpacity(0.9),
    900: tertiaryLightColor.withOpacity(1.0),
  },
);

final MaterialColor textMaterialColorLight = MaterialColor(
  textColorLight.value,
  <int, Color>{
    50: textColorLight.withOpacity(0.1),
    100: textColorLight.withOpacity(0.2),
    200: textColorLight.withOpacity(0.3),
    300: textColorLight.withOpacity(0.4),
    400: textColorLight.withOpacity(0.5),
    500: textColorLight.withOpacity(0.6),
    600: textColorLight.withOpacity(0.7),
    700: textColorLight.withOpacity(0.8),
    800: textColorLight.withOpacity(0.9),
    900: textColorLight.withOpacity(1.0),
  },
);

final MaterialColor backgroundMaterialColorLight = MaterialColor(
  backgroundColorLight.value,
  <int, Color>{
    50: backgroundColorLight.withOpacity(0.1),
    100: backgroundColorLight.withOpacity(0.2),
    200: backgroundColorLight.withOpacity(0.3),
    300: backgroundColorLight.withOpacity(0.4),
    400: backgroundColorLight.withOpacity(0.5),
    500: backgroundColorLight.withOpacity(0.6),
    600: backgroundColorLight.withOpacity(0.7),
    700: backgroundColorLight.withOpacity(0.8),
    800: backgroundColorLight.withOpacity(0.9),
    900: backgroundColorLight.withOpacity(1.0),
  },
);

