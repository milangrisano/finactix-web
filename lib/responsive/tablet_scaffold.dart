import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/Text/letters.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/extend_appbar_icon.dart';
import 'package:responsive_app/ui/layout/landing_page_layout.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 0, 4, 51),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Image.asset('assets/logo/Logo1.png'),
        title: const LettersBold(
          text: 'Finactix',
          color: Color.fromRGBO(95, 145, 61, 1),
          fontSize: 20,
        ),
        actions: [
          ExtendAppBarIcon(
            text: 'Home',
            onPressed: () => pageProvider.goTo(0),
            icon: Icons.home,
          ),
          ExtendAppBarIcon(
            text: 'About',
            onPressed: () => pageProvider.goTo(1),
            icon: Icons.people,
          ),
          ExtendAppBarIcon(
            text: 'Pricing',
            onPressed: () => pageProvider.goTo(2),
            icon: Icons.attach_money_sharp,
          ),
          ExtendAppBarIcon(
            text: 'Contact',
            onPressed: () => pageProvider.goTo(3),
            icon: Icons.mail_outline,
          ),
          ExtendAppBarIcon(
            text: 'Location',
            onPressed: () => pageProvider.goTo(4),
            icon: Icons.location_on,
          ),
          const SizedBox(width: 20),
        ],
        // elevation: 10,
      ),
      body: const LandingPageLayout(),
    );
  }
}
