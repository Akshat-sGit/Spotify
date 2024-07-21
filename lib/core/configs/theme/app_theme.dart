import 'package:flutter/material.dart'; 
import 'package:spotify/core/configs/theme/app_colors.dart'; 
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary, 
    brightness: Brightness.light, 
    scaffoldBackgroundColor: AppColors.lightBackgorund, 
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary, 
        elevation: 0,
        textStyle: GoogleFonts.plusJakartaSans(
          fontSize: 16, 
          fontWeight: FontWeight.bold, 
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    ), 
  ); 

  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary, 
    brightness: Brightness.dark, 
    scaffoldBackgroundColor: AppColors.darkBackground, 
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary, 
        elevation: 0,
        textStyle: GoogleFonts.plusJakartaSans(
          fontSize: 16, 
          fontWeight: FontWeight.bold, 
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    ), 
  ); 

} 