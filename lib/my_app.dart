import 'package:flutter/material.dart';
import 'package:flutter_fl_chart_package/bar_chart/bar_chart.dart';
import 'package:flutter_fl_chart_package/pie_chart/pie_chart_widget.dart';
import '/line_chart/line_chart_widget.dart';
import '/line_chart/price_points.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Chart Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 20),
          ),
        ),
        home: const HomePage(),
      );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('data'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LineChartWidget(pricePoints()),
                ),
              ),
              child: const Text('Line Chart'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BarChartSample1()),
              ),
              child: const Text('Pie Chart'),
            ),
          ],
        ),
      );
}
