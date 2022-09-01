import 'package:financial_app/Screens/panel_center/linear_graph.dart';
import 'package:financial_app/constants.dart';
import 'package:flutter/material.dart';

class Person {
  String name;
  Color color;
  Person({required this.name, required this.color});
}

class PanelCenterPage extends StatefulWidget {
  @override
  State<PanelCenterPage> createState() => _PanelCenterPageState();
}

class _PanelCenterPageState extends State<PanelCenterPage> {
  List<Person> _persons = [
    Person(name: "Issa ngabo", color: Constants.orangeLight),
    Person(name: "Felix jane", color: Constants.redLight),
    Person(name: "Muhoza chance ", color: Constants.blueLight),
    Person(name: "Ngabo Alex", color: Constants.orangeLight),
    Person(name: "Issa Rugina", color: Constants.greenLight),
    Person(name: "Mussa ngabo", color: Constants.blueLight),
    Person(name: "Issa Rugira", color: Constants.redLight),
    Person(name: "Mugabo ngabo", color: Constants.greenLight),
    Person(name: "Mugabo ngabo", color: Constants.orangeLight),
    Person(name: "Mugabo ngabo", color: Constants.redLight),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
                    "Products Available",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "82% of the Products Avil.",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Chip(
                    label: Text(
                      "20,500",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),

          //chart middle
          BarChartSample2(),
          Padding(
            padding: const EdgeInsets.only(
              left: Constants.kPadding / 2,
              right: Constants.kPadding / 2,
              bottom: Constants.kPadding / 2,
              top: Constants.kPadding,
            ),
            child: Card(
              color: Constants.purpleLight,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: List.generate(
                  _persons.length,
                  (index) => ListTile(
                    leading: CircleAvatar(
                      radius: 15,
                      child: Text(
                        _persons[index].name.substring(0, 1),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: _persons[index].color,
                    ),
                    title: Text(
                      _persons[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
