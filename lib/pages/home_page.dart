import 'package:flutter/material.dart';

import 'line_chart_page.dart';
import 'pie_chart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Charts Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LineChartPage(),
                  ),
                ),
                child: const Text('Line Chart'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PieChartPage(),
                  ),
                ),
                child: const Text('Pie Chart'),
              ),
            ],
          ),
        ),
      );
}
