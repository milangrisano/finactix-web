import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Letters extends StatelessWidget {
  const Letters({
    super.key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  });
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersBold extends StatelessWidget {
  const LettersBold({
    super.key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  });
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
class LettersBoldCenter extends StatelessWidget {
  const LettersBoldCenter({
    super.key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  });
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.roboto(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class LettersCenter extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const LettersCenter({
    super.key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  });


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersJustify extends StatelessWidget {
  const LettersJustify({
    super.key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  });
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersUnderline extends StatelessWidget {
  const LettersUnderline({
    super.key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.black,
  });
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: fontSize,
        decoration: TextDecoration.underline
      ),
    );
  }
}