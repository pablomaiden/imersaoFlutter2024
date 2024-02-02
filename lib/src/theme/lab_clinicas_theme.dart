
import 'package:flutter/material.dart';

final class LabClinicasTheme{

static const titleStyle        = TextStyle(color: blueColor, fontSize: 32, fontWeight: FontWeight.w900);  
static const titleSmalStyle    = TextStyle(color: blueColor, fontSize: 24, fontWeight: FontWeight.w900);  
static const subTitleSmalStyle = TextStyle(color: blueColor, fontSize: 18, fontWeight: FontWeight.w500);  


static const orangeColor      = Color(0xFFFFAE45);
static const lightOrangecolor = Color(0xFFFFEFE9);
static const blueColor        = Color(0xFF01BDD6);
static const lightGreyColor   = Color(0xFFFFEFE9);
static const darkTheme        = Color(0xFFFFEFE9);

static final _defaultInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(16),borderSide: const BorderSide(color:lightOrangecolor));

static final lightTheme = ThemeData(    
  colorScheme: ColorScheme.fromSeed(seedColor: lightOrangecolor),
  useMaterial3: true, 
  fontFamily: 'Montserrat',
  scaffoldBackgroundColor:lightOrangecolor,
  inputDecorationTheme: 
  InputDecorationTheme(
    enabledBorder: _defaultInputBorder,
    focusedBorder: _defaultInputBorder,
    errorBorder: _defaultInputBorder.copyWith(borderSide: const BorderSide(color: Colors.red)),
    filled: true,
    fillColor: lightOrangecolor, 
    labelStyle: const TextStyle(
      fontSize: 14, color: orangeColor, 
      fontWeight: FontWeight.w700,
      ),floatingLabelStyle: const TextStyle(color: blueColor, fontWeight: FontWeight.w600) ),
      elevatedButtonTheme: 
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: blueColor, 
        foregroundColor: Colors.white, 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),textStyle: const TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w700)))
  );


}