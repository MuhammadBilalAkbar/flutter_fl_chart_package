import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

class DataItem {
  int x;
  double y1;
  double y2;
  double y3;

  DataItem({
    required this.x,
    required this.y1,
    required this.y2,
    required this.y3,
  });
}

class BarChartPage extends StatelessWidget {
  const BarChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bar Chart'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: AspectRatio(
            aspectRatio: 1,
            child: BarChart(
              BarChartData(
                borderData: FlBorderData(
                  border: const Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  ),
                ),
                groupsSpace: 10,
                barGroups: [
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ],
                  ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 15, width: 15, color: Colors.amber),
                    ],
                  ),
                  BarChartGroupData(
                    x: 4,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ],
                  ),
                  BarChartGroupData(
                    x: 5,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 11, width: 15, color: Colors.amber),
                    ],
                  ),
                  BarChartGroupData(
                    x: 6,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ],
                  ),
                  BarChartGroupData(
                    x: 7,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ],
                  ),
                  BarChartGroupData(
                    x: 8,
                    barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
