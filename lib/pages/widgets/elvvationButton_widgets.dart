import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevationWigdgets extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color color;
  final Color? textcolor;
  final Color? bordercolor;

  const ElevationWigdgets({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    this.textcolor,
    this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.maxFinite, 60),
        elevation: 0,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: bordercolor ?? Color(0xFFA7A9B7),
          ),
          borderRadius: BorderRadius.circular(30)
        ),
        
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: textcolor ?? Colors.white,
        ),
      ),
    );
  }
}
