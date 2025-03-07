import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 4, 51),
      child: const Center(
        child: Text(
          'book Keeping',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),
        )
      ),
    );
  }
}