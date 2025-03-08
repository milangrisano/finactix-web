import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/Text/letters.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/custom_drawer_header.dart';
import 'package:responsive_app/shared/drawer_list_tile.dart';
import 'package:responsive_app/ui/layout/landing_page_layout.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 0, 4, 51),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromRGBO(95, 145, 61, 1)),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Image.asset('assets/logo/Logo1.png'),
        title: const LettersBold(
          text: 'Finactix',
          color: Color.fromRGBO(95, 145, 61, 1),
          fontSize: 20,
        ),
        centerTitle: false,
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 0, 4, 51),
        shadowColor: Colors.white,
        child: Column(
          children: [
            const CustomDrawerHeader(),
            DrawerListTile(
              icon: Icons.home,
              name: const Text('Home'),
              onPressed: () => pageProvider.goTo(0),
            ),
            DrawerListTile(
              icon: Icons.people,
              name: const Text('About'),
              onPressed: () => pageProvider.goTo(1),
            ),
            DrawerListTile(
              icon: Icons.money,
              name: const Text('Pricing'),
              onPressed: () => pageProvider.goTo(2),
            ),
            DrawerListTile(
              icon: Icons.mail_outline_outlined,
              name: const Text('Contact'),
              onPressed: () => pageProvider.goTo(3),
            ),
            DrawerListTile(
              icon: Icons.location_on,
              name: const Text('Location'),
              onPressed: () => pageProvider.goTo(4),
            ),
          ],
        ),
      ),
      body: const LandingPageLayout(),
    );
  }
}
