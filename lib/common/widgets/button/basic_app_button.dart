import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed; 
  final String title;
  final double ? height; 


  const BasicAppButton({super.key, required this.onPressed, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80) 
      ) ,
      child: Text(
        title,
        style: GoogleFonts.plusJakartaSans(color: Colors.white),
      ),
    );
  }
}