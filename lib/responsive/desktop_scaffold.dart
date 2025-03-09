import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/Text/letters.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/extend_appbar_button.dart';
import 'package:responsive_app/ui/layout/landing_page_layout.dart';
import 'package:url_launcher/link.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 4, 51),
      extendBodyBehindAppBar: true,
      appBar: AppBar(        
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Image.asset('assets/logo/Logo1.png'),
        title: const Letters(
          text: 'Finactix',
          fontSize: 30,
          color: Color.fromRGBO(95, 145, 61, 1),
          ),
        actions: [
          ExtendAppBarButton(
            text: 'Home',
            onPressed: () => pageProvider.goTo(0),
          ),
          ExtendAppBarButton(
            text: 'Tax',
            onPressed: () => pageProvider.goTo(1),
          ),
          ExtendAppBarButton(
            text: 'Financial',
            onPressed: () => pageProvider.goTo(2),
          ),
          ExtendAppBarButton(
            text: 'Insurance',
            onPressed: () => pageProvider.goTo(3),
          ),
          ExtendAppBarButton(
            text: 'Book Keeping',
            onPressed: () => pageProvider.goTo(4),
          ),
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(
              'https://nextcloud.finactix.com'
            ),
            builder: (context, followlink) => IconButton(
              onPressed: followlink,
              icon: const Icon(Icons.person_2_rounded),
              color: const Color.fromRGBO(95, 145, 61, 1),
              iconSize: 30,
            ),
          ),
          const SizedBox(width: 20),
        ],
        elevation: 10,
      ),
      body: const LandingPageLayout(),
    );
  }
}
