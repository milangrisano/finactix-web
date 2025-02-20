import 'package:flutter/material.dart';
import 'package:responsive_app/shared/card_home_bright.dart';
import 'package:responsive_app/shared/cards_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/logo/Logo1.png'),
              opacity: 0.4,
              fit: BoxFit.contain),
        ),
        child:   Column(
          children: [
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [ 
                CardHomeBright(
                  title: 'Tax Preparation Services',
                  textBody: 'Nisi duis nostrud excepteur voluptate sunt esse. Deserunt officia et dolor velit ullamco est occaecat officia ipsum reprehenderit. Et magna officia occaecat excepteur dolore incididunt aliquip exercitation ad minim dolor occaecat. Ullamco mollit excepteur adipisicing deserunt tempor in dolor esse officia. Officia nulla excepteur ea est pariatur sint anim occaecat dolor dolor. Ipsum cillum nisi reprehenderit dolor. Dolor labore minim dolore sit in nostrud.', icon: Icons.bar_chart_rounded,
                ),
                CardHomeBright(
                  title: 'Financial Services',
                  textBody: 'Elit laborum elit cillum officia et irure aute. Nulla officia voluptate veniam exercitation deserunt ex dolore exercitation tempor exercitation Lorem commodo aute. In in non incididunt sunt enim labore proident in adipisicing ut nostrud ullamco. Ex nisi ullamco exercitation elit qui ut dolor eu. Duis irure proident reprehenderit sint eu officia sint. Culpa nulla consectetur eu in est et anim aute laborum incididunt laborum officia amet. Sunt amet labore veniam duis elit occaecat pariatur.', icon: Icons.calculate_outlined,
                ),
                CardHomeBright(
                  title: 'Insurance Strategies',
                  textBody: 'Incididunt sit quis elit consequat est aute ullamco consequat aute. Proident fugiat nostrud ut qui anim commodo anim aute qui eu. Cupidatat Lorem aliqua proident mollit incididunt quis.', icon: Icons.verified_user_outlined,
                ),
                CardHomeBright(
                  title: 'Book Keeping',
                  textBody: 'Deserunt ipsum esse reprehenderit commodo amet sunt cillum cupidatat laboris. Culpa pariatur cillum duis elit. Nisi minim labore nulla eiusmod ullamco laborum non nulla et dolor qui. Deserunt aliqua proident elit elit anim ad nulla laboris aliqua commodo ut. Aliquip sunt amet nostrud sit.', icon: Icons.library_books_outlined,
                ),
              ],
            ),
            const Spacer(),
            Container(
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
            ),
            const SizedBox(height: 50,)
          ],
        )
    );
  }
}