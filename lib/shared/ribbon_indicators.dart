import 'package:flutter/material.dart';
import 'package:responsive_app/shared/cards_index.dart';

class RibbonIndicators extends StatelessWidget {
  const RibbonIndicators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      // color: Colors.deepPurple,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CardsIndex(imagePath: 'assets/logo/apple.png',),
          CardsIndex(imagePath: 'assets/logo/nvidia.png',),
          CardsIndex(imagePath: 'assets/logo/microsoft.png',),
          CardsIndex(imagePath: 'assets/logo/amazon.png',),
          CardsIndex(imagePath: 'assets/logo/Google-Alphabet.png',),
          CardsIndex(imagePath: 'assets/logo/Saudi-Aramco.png',),
          CardsIndex(imagePath: 'assets/logo/tesla.png',),
          CardsIndex(imagePath: 'assets/logo/meta.png',),
        ],
      ),
    );
  }
}