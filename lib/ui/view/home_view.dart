import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          CardHome(colorCards: Colors.greenAccent),
          CardHome(colorCards: Colors.greenAccent),
          CardHome(colorCards: Colors.greenAccent),
        ],
      )
    );
  }
}

class CardHome extends StatelessWidget {
  final Color colorCards;
  const CardHome({
    super.key,
    required this.colorCards,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.greenAccent,
    );
  }
}
