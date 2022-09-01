import 'package:financial_app/Screens/panel_center/panel_center_page.dart';
import 'package:financial_app/Screens/panel_left/panel_left_page.dart';
import 'package:financial_app/Screens/panel_right/panel_right_page.dart';
import 'package:financial_app/app_bar/app_bar_widget.dart';
import 'package:financial_app/drawer/drawer_page.dart';
import 'package:financial_app/responsive_layout.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);
//we need to create the bbootom app bar
  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: (ResponsiveLayout.isTinyLimit(context) ||
                ResponsiveLayout.isTinyHeightLimit(context)
            ? Container()
            : AppBarWidget()),
        preferredSize: Size(double.infinity, 100),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: PanelCenterPage(),
        tablet: Row(
          children: [
            Expanded(
              child: PanelLeftPage(),
            ),
            Expanded(
              child: PanelCenterPage(),
            ),
          ],
        ),
        largeTablet: Row(
          children: [
            Expanded(
              child: PanelLeftPage(),
            ),
            Expanded(
              child: PanelCenterPage(),
            ),
            Expanded(
              child: PanelRightPage(),
            ),
          ],
        ),
        computer: Row(
          children: [
            Expanded(
              child: DrawerPage(),
            ),
            Expanded(
              child: PanelLeftPage(),
            ),
            Expanded(
              child: PanelCenterPage(),
            ),
            Expanded(
              child: PanelRightPage(),
            ),
          ],
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
