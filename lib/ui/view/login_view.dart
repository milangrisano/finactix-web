import 'package:flutter/material.dart';
import 'package:responsive_app/Text/letters.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: LettersBold(text: 'Login View',),
      ),
    );
  }
}