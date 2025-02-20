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
        child:  Column(
          children: [
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [ 
                CardHomeBright(
                  title: 'Tax Preparation Services',
                  textBody: 'Occaecat officia excepteur voluptate et adipisicing nostrud ut enim mollit consectetur et ipsum. Dolore eiusmod enim incididunt veniam eiusmod ex consectetur nulla magna aliquip eiusmod. Consectetur tempor excepteur in anim minim et adipisicing quis amet eu nulla minim. Aliquip laboris consequat excepteur elit. Voluptate qui sunt laboris ullamco anim reprehenderit quis labore dolore eiusmod in laboris.'
                ),
                CardHomeBright(
                  title: 'Financial Services',
                  textBody: 'Elit laborum elit cillum officia et irure aute. Nulla officia voluptate veniam exercitation deserunt ex dolore exercitation tempor exercitation Lorem commodo aute. In in non incididunt sunt enim labore proident in adipisicing ut nostrud ullamco. Ex nisi ullamco exercitation elit qui ut dolor eu. Duis irure proident reprehenderit sint eu officia sint. Culpa nulla consectetur eu in est et anim aute laborum incididunt laborum officia amet. Sunt amet labore veniam duis elit occaecat pariatur.',
                ),
                CardHomeBright(
                  title: 'Insurance Strategies',
                  textBody: 'Incididunt sit quis elit consequat est aute ullamco consequat aute. Proident fugiat nostrud ut qui anim commodo anim aute qui eu. Cupidatat Lorem aliqua proident mollit incididunt quis.'
                ),
                CardHomeBright(
                  title: 'Book Keeping',
                  textBody: 'Deserunt ipsum esse reprehenderit commodo amet sunt cillum cupidatat laboris. Culpa pariatur cillum duis elit. Nisi minim labore nulla eiusmod ullamco laborum non nulla et dolor qui. Deserunt aliqua proident elit elit anim ad nulla laboris aliqua commodo ut. Aliquip sunt amet nostrud sit.'
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