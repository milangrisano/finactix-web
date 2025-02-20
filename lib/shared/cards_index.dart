import 'package:flutter/material.dart';
import 'package:responsive_app/Text/letters.dart';

class CardsIndex extends StatelessWidget {
  final String imagePath;
  const CardsIndex({
      super.key,
      required this.imagePath
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      decoration:  const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow:  [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 2,
          offset: Offset(-5, 5)
        )
      ],
      ),
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                opacity: 0.4,
                fit: BoxFit.contain
              ),
            ),
          ),
          const Spacer(),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LettersBoldCenter(text: 'buy'),
              LettersCenter(text: '244.87',fontSize: 10, color: Colors.grey),
              LettersBoldCenter(text: 'sale'),
              LettersCenter(text: '245.13',fontSize: 10, color: Colors.grey),
          
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
