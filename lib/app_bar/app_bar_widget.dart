import 'package:financial_app/constants.dart';
import 'package:financial_app/responsive_layout.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.purpleLight,
      child: Row(
        children: [
          if (ResponsiveLayout.isComputer(context))
          Container(
            margin: EdgeInsets.all(Constants.kPadding),
            height: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 0),
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}