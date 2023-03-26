import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class LineChartPage extends StatelessWidget {
  const LineChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Line Chart'),
        ),
        body: AspectRatio(
          aspectRatio: 1,
          child: LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 5),
                    FlSpot(6.8, 2.5),
                    FlSpot(8, 4),
                    FlSpot(9.5, 3),
                    FlSpot(11, 4),
                  ],
                  isCurved: true,
                  // dotData used to show or hide dots
                  dotData: FlDotData(show: true),
                  color: Colors.blue,
                  barWidth: 5,
                  // belowBarData contains data below the BarChart
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.green.withOpacity(0.7),
                  ),
                ),
              ],
              // Restrict x axis using minX and maxX. minX is starting point of x axis and maxX is ending point of x axis.
              // Restrict y axis using minY and maxY.  minY is starting point of y axis and maxY is ending point of y axis.
              minX: 0,
              maxX: 11,
              minY: 2,
              maxY: 5,
              backgroundColor: Colors.black,
              // titlesData to customize left, right, top and bottom titles
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  axisNameWidget: const Text('X axis'),
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    interval: 3,
                    getTitlesWidget: (value, meta) {
                      String text = '';
                      switch (value.toInt()) {
                        case 0:
                          text = 'Monday';
                          break;
                        case 6:
                          text = 'Thursday';
                          break;
                        case 9:
                          text = 'Sunday';
                          break;
                      }
                      return Text(text);
                    },
                  ),
                ),
                // topTitles: AxisTitles(),
                leftTitles: AxisTitles(
                  axisNameWidget: const Text('Y axis'),
                  sideTitles: SideTitles(
                    showTitles: true,
                    // getTitlesWidget: (value, titleMeta) {}
                  ),
                ),
                // rightTitles: AxisTitles(),
              ),
              // gridData to customize data inside of border
              gridData: FlGridData(
                show: true,
                drawHorizontalLine: true,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: Colors.greenAccent,
                  strokeWidth: 0.5,
                ),
                drawVerticalLine: true,
                getDrawingVerticalLine: (value) => FlLine(
                  color: Colors.amberAccent,
                  strokeWidth: 0.5,
                ),
              ),
              // borderData to customize data of border
              borderData: FlBorderData(
                show: true,
                border: Border.all(
                  color: Colors.red,
                  width: 5,
                ),
              ),
            ),
            swapAnimationDuration: const Duration(milliseconds: 150),
            swapAnimationCurve: Curves.linear,
          ),
        ),
      );
}
