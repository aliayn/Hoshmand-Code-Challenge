import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/extensions.dart';

final Color _lightPrimary = HexColor.fromHex('#FCD34B');
final Color _lightAccent = HexColor.fromHex('#FCD34B');
final Color _lightBodyTextColor = HexColor.fromHex('#C89358');
final Color _lightTextColor = HexColor.fromHex('#1E2329');
final Color _lightGrayTextColor = HexColor.fromHex('#1E2329');
final Color _lightDividerColor = HexColor.fromHex('#C2CBD7');

ThemeData get lightTheme => ThemeData(
    fontFamily: 'YekanBakh',
    iconTheme: const IconThemeData(color: Colors.white),
    brightness: Brightness.light,
    // backgroundColor: _lightBG,
    canvasColor: Colors.transparent,
    primaryColor: _lightPrimary,
    scaffoldBackgroundColor: Colors.white,
    focusColor: Colors.black,
    cardColor: _lightGrayTextColor,
    // errorColor: _lightErrorColor,
    dividerColor: _lightDividerColor,
    secondaryHeaderColor: CupertinoColors.lightBackgroundGray,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: _lightPrimary, elevation: 0),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          color: _lightTextColor, fontSize: 40, fontWeight: FontWeight.w500),
      headlineMedium: TextStyle(
          color: _lightTextColor, fontSize: 26, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(
          color: _lightTextColor, fontSize: 22, fontWeight: FontWeight.w500),
      titleLarge: TextStyle(
          color: _lightTextColor, fontSize: 16, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          color: _lightTextColor, fontSize: 19, fontWeight: FontWeight.w700),
      titleSmall: TextStyle(
          color: _lightTextColor, fontSize: 16, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(
          color: _lightTextColor, fontSize: 16, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: _lightTextColor, fontSize: 14, fontWeight: FontWeight.normal),
      bodySmall: TextStyle(
          color: _lightBodyTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w600),
    ),
    //.apply(bodyColor: _lightTextColor, displayColor: _lightTextColor),
    textSelectionTheme: TextSelectionThemeData(cursorColor: _lightAccent));
