import 'package:flutter/material.dart';
import 'package:responsive_app/Text/letters.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: LettersBold(
            text: 'Auth Layout',
          ),
        ),
      )
    );
  }
}