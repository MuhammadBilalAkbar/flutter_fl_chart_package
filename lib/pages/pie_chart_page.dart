import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartPage extends StatefulWidget {
  const PieChartPage({Key? key}) : super(key: key);

  @override
  State<PieChartPage> createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Pie Chart'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
            child: PieChart(
              PieChartData(
                centerSpaceRadius: 5,
                borderData: FlBorderData(show: false),
                sectionsSpace: 2,
                sections: [
                  PieChartSectionData(
                      value: 35, color: Colors.purple, radius: 100),
                  PieChartSectionData(
                      value: 40, color: Colors.amber, radius: 100),
                  PieChartSectionData(
                      value: 55, color: Colors.green, radius: 100),
                  PieChartSectionData(
                      value: 70, color: Colors.orange, radius: 100),
                ],
              ),
            ),
          ),
        ),
      );
}
