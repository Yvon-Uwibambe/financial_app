import 'dart:ui';

import 'package:financial_app/Screens/panel_right/wiggle_graph.dart';
import 'package:financial_app/constants.dart';
import 'package:flutter/material.dart';

//create the class of product
class Product {
  String name;
  bool enable;
  Product({this.enable = true, required this.name});
}

class PanelRightPage extends StatefulWidget {
  @override
  State<PanelRightPage> createState() => _PanelRightPageState();
}

class _PanelRightPageState extends State<PanelRightPage> {
  //create list of products
  List<Product> _products = [
    Product(name: "Umugati", enable: true),
    Product(name: "Amata", enable: true),
    Product(name: "Umutobe", enable: true),
    Product(name: "Ibisuguti", enable: true),
    Product(name: "Capati", enable: true),
    Product(name: "Ikawa", enable: true),
    Product(name: "Ibishyimbo", enable: true),
    Product(name: "Isambusa", enable: true),
    Product(name: "Pani", enable: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Constants.kPadding / 2,
                right: Constants.kPadding / 2,
                top: Constants.kPadding / 2,
              ),
              child: Card(
                color: Constants.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Container(
                  width: double.infinity,
                  child: ListTile(
                    title: Text(
                      "Net Revenue",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "7% of sales ",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Chip(
                      label: Text(
                        r"4,500",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //CHART
            LineChartSample1(),
            Padding(
              padding: const EdgeInsets.only(
                left: Constants.kPadding / 2,
                right: Constants.kPadding,
                bottom: Constants.kPadding,
                top: Constants.kPadding / 2,
              ),
              child: Card(
                color: Constants.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: List.generate(
                    _products.length,
                    (index) => SwitchListTile.adaptive(
                      title: Text(
                        _products[index].name,
                        style: TextStyle(color: Colors.white),
                      ),
                      value: _products[index].enable,
                      onChanged: (newValue) {
                        setState(() {
                          _products[index].enable = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
