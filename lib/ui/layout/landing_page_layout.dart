import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/ui/view/tax_view.dart';
import 'package:responsive_app/ui/view/insurances_view.dart';
import 'package:responsive_app/ui/view/home_view.dart';
import 'package:responsive_app/ui/view/book_view.dart';
import 'package:responsive_app/ui/view/financial_view.dart';

class LandingPageLayout extends StatelessWidget {
  const LandingPageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollControler,
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}