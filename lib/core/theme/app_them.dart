import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

class AppThem {
  static ThemeData darkMode = ThemeData.dark().copyWith(
    
    colorScheme: darkColorScheme,

    scaffoldBackgroundColor: AppPalette.backGroundDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color:AppPalette.iconSellectedLightDark ),
      unselectedIconTheme: IconThemeData( color: AppPalette.iconUnSellecteddark)
    ),

    textTheme: TextTheme(

      bodyLarge: TextStyle(
        color: AppPalette.backGroundLight,
        fontWeight: FontWeight.w700,
        fontSize: 35,
        height: 1.25,
      ),
      bodyMedium: TextStyle(
        color: AppPalette.backGroundLight,
        fontWeight: FontWeight.w700,
        fontSize: 40,
        height: 1.25,
      ),
      bodySmall: TextStyle(
        color: AppPalette.backGroundLight,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      displaySmall: TextStyle(
        color: AppPalette.backGroundLight,
        fontWeight: FontWeight.w400,
        fontSize: 15,
      ),
      displayMedium: TextStyle(
        color: AppPalette.backGroundLight,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      labelSmall: TextStyle(
        color: AppPalette.colorLableSmall,
        fontWeight: FontWeight.w400,
        fontSize: 11,
      ),
    ),
  );
  static ThemeData lightMode = ThemeData.light().copyWith(
   colorScheme: lightColorScheme,
    scaffoldBackgroundColor: AppPalette.backGroundLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color:AppPalette.iconSellectedLightDark ),
      unselectedIconTheme: IconThemeData( color: AppPalette.iconUnSellectedLight)
    ),
    textTheme: TextTheme(
      
      bodyLarge: TextStyle(
        color:  Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 35,
        height: 1.25,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 40,
        height: 1.25,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      displaySmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      displayMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      labelSmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 11,
      ),
    ),
  );

  ////colorschema
  ///
  ///light///////
  static ColorScheme lightColorScheme = ColorScheme(


  onPrimary: Color(0xff000000),
  primary: const Color.fromARGB(255, 0, 0, 0), 
  secondary: Color(0xFF735761),
  
  
  brightness: Brightness.light,
  
  primaryContainer: Color(0xFFFFD8E6),
  onPrimaryContainer: Color(0xFF3D0024),
  
  error: Color(0xFFE1BDCA),
    onError: Color(0xFFE1BDCA),
     surface: Color(0xFFE1BDCA), 
     onSurface: Color(0xFFE1BDCA),
      onSecondary: Color(0xFFE1BDCA),
  
);
////dark///////
static ColorScheme darkColorScheme = ColorScheme(
  
  onPrimary: Color(0xFFFFFFFF),
  primary: AppPalette.iconUnSellecteddark,
  secondary: Color(0xFFE1BDCA),


  
  brightness: Brightness.dark,
  
  
  primaryContainer: Color(0xFF792952),
  onPrimaryContainer: Color(0xFFFFD8E6),
  
  onSecondary: Color(0xFF412A33),
   error: Color(0xFFE1BDCA),
    onError: Color(0xFFE1BDCA),
     surface: Color(0xFFE1BDCA), 
     onSurface: Color(0xFFE1BDCA),
  
);
}
