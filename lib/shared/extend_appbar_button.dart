import 'package:flutter/material.dart';

class ExtendAppBarButton extends StatelessWidget {
  final String text;
  final Function onPressed;
    
  const ExtendAppBarButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton(
        onPressed: () => onPressed(),
        style: TextButton.styleFrom(
          foregroundColor: const Color.fromRGBO(95, 145, 61, 1),
          textStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )
          // disabledForegroundColor: Colors.red.withOpacity(0.38),
        ),
        child: Text(text)
      ),
    );
  }
}