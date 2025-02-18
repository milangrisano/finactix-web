import 'package:flutter/material.dart';
import 'package:responsive_app/Text/letters.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/logo/Logo1.jpeg'),
              opacity: 0.2,
              fit: BoxFit.contain),
          color: Colors.white,
        ),
        child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CardHome(colorCards: Colors.greenAccent, title: 'Tax Preparation Services',),
          CardHome(colorCards: Colors.greenAccent, title: 'Financial Services',),
          CardHome(colorCards: Colors.greenAccent, title: 'Insurance Strategies:',),
          CardHome(colorCards: Colors.greenAccent, title: 'Book keeping',),
        ],
      )
    );
  }
}

class CardHome extends StatelessWidget {
  final Color colorCards;
  final String title;
  const CardHome({
    super.key,
    required this.colorCards,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.greenAccent,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(-5, 5)
          )
        ]
        ),
      width: 300,
      height: 400,
      child: LettersBoldCenter(
        text: title,
        fontSize: 22,
        ),
    );
  }
}
