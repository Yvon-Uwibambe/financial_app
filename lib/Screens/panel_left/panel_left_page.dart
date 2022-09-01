import 'package:financial_app/Screens/panel_left/circle_graph.dart';
import 'package:financial_app/Screens/panel_left/curved_chart.dart';
import 'package:financial_app/constants.dart';
import 'package:financial_app/responsive_layout.dart';
import 'package:flutter/material.dart';

class Todo {
  String name;
  bool enable;
  Todo({this.enable = true, required this.name});
}

class PanelLeftPage extends StatefulWidget {
  @override
  State<PanelLeftPage> createState() => _PanelLeftPageState();
}

class _PanelLeftPageState extends State<PanelLeftPage> {
  List<Todo> _todo = [
    Todo(name: "purchase", enable: true),
    Todo(name: "refill the inventory of speakers", enable: true),
    Todo(name: "Hire someone", enable: true),
    Todo(name: "Marketing Strategy", enable: true),
    Todo(name: "Selling funiture", enable: true),
    Todo(name: "Finish the disclosure", enable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        if (ResponsiveLayout.isComputer(context))
          Container(
            color: Constants.purpleLight,
            width: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Constants.pupleDark,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
        SingleChildScrollView(
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
                  child: ListTile(
                    title: Text(
                      "Products Sold",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "18% of Products Sold",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Chip(
                      label: Text(
                        "4,500",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              //Graph 1
              LineChartSample2(),
              PieChartSample2(),
              //Graph 2

              Padding(
                padding: const EdgeInsets.only(
                  left: Constants.kPadding / 2,
                  right: Constants.kPadding / 2,
                  top: Constants.kPadding / 2,
                  bottom: Constants.kPadding,
                ),
                child: Card(
                  color: Constants.purpleLight,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: List.generate(
                      _todo.length,
                      (index) => CheckboxListTile(
                        title: Text(
                          _todo[index].name,
                          style: TextStyle(color: Colors.white),
                        ),
                        value: _todo[index].enable,
                        onChanged: (newValue) {
                          setState(() {
                            _todo[index].enable = newValue ?? true;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
