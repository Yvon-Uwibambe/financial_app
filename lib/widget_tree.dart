import 'package:financial_app/drawer/drawer_page.dart';
import 'package:financial_app/responsive_layout.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: (ResponsiveLayout.isTinyLimit(context) || 
        ResponsiveLayout.isTinyHeightLimit(context) ? Container() : AppBar()),
        preferredSize: Size(double.infinity, 100),
        ),
        body: ResponsiveLayout(
          tiny: Container(),
          phone: Container(),
          tablet: Container(),
          largeTablet: Container(),
          computer: Container(),
        ),
        drawer: DrawerPage(),
    );
  }
}