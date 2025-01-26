import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop/desktop_body.dart';
import 'package:my_portfolio/mobile/mobile_body.dart';
import 'package:my_portfolio/responsive/responsice_layout.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: ResponsiveLayout(
        mobileBody: MobileBody(), 
        desktopBody: DesktopBody()
      ),
    );
  }
}


