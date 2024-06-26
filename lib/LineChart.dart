import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text('Gold App'),

      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Gold App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('App evaluation'),
              onTap: () {
                // إغلاق النافذة المنبثقة وتنفيذ الإجراء المناسب
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                  'About US'

              ),

              onTap: () {
                // إغلاق النافذة المنبثقة وتنفيذ الإجراء المناسب
                Navigator.pop(context);
              },
            ),
            // يمكنك إضافة المزيد من العناصر هنا
          ],
        ),
      ),
      body: Column(
        children: [
          // The first graph
          Container(
            height: 200,
            child: LineChart(
              LineChartData(
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  show: true,

                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(2018, 100),
                      FlSpot(2019, 120),
                      FlSpot(2020, 150),
                      FlSpot(2021, 180),
                      FlSpot(2022, 200),
                      FlSpot(2023, 220),
                    ],
                    isCurved: true,
                    barWidth: 3,
                    color: Colors.green,
                    belowBarData: BarAreaData(show: true, color: Colors.green.withOpacity(0.5)),
                  ),
                  LineChartBarData(
                    spots: [
                      FlSpot(2018, 50),
                      FlSpot(2019, 60),
                      FlSpot(2020, 70),
                      FlSpot(2021, 80),
                      FlSpot(2022, 90),
                      FlSpot(2023, 100),
                    ],
                    isCurved: true,
                    barWidth: 3,
                    color: Colors.red,
                    belowBarData: BarAreaData(show: true, color: Colors.red.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ),
          // The second graph
          Container(
            height: 200,
            child: LineChart(
              LineChartData(
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  show: true,
                  // bottomTitles: SideTitles(
                  //   showTitles: true,
                  //   getTitles: (value) {
                  //     return value.toInt().toString();
                  //   },
                  // ),
                  // leftTitles: SideTitles(
                  //   showTitles: true,
                  //   getTitles: (value) {
                  //     return value.toInt().toString();
                  //   },
                  // ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(2018, 20),
                      FlSpot(2019, 40),
                      FlSpot(2020, 60),
                      FlSpot(2021, 80),
                      FlSpot(2022, 100),
                      FlSpot(2023, 120),
                    ],
                    isCurved: true,
                    barWidth: 3,
                    color: Colors.green,
                    belowBarData: BarAreaData(show: true, color: Colors.green.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ),
          // The third graph
          Container(
            height: 200,
            child: LineChart(
              LineChartData(
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  show: true,
                  // bottomTitles: SideTitles(
                  //   showTitles: true,
                  //   getTitles: (value) {
                  //     return value.toInt().toString();
                  //   },
                  // ),
                  // leftTitles: SideTitles(
                  //   showTitles: true,
                  //   getTitles: (value) {
                  //     return value.toInt().toString();
                  //   },
                  // ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(2018, 10),
                      FlSpot(2019, 30),
                      FlSpot(2020, 50),
                      FlSpot(2021, 70),
                      FlSpot(2022, 90),
                      FlSpot(2023, 110),
                    ],
                    isCurved: true,
                    barWidth: 3,
                    color: Colors.green,
                    belowBarData: BarAreaData(show: true, color: Colors.green.withOpacity(0.5)),
                  ),
                  LineChartBarData(
                    spots: [
                      FlSpot(2018, 5),
                      FlSpot(2019, 15),
                      FlSpot(2020, 25),
                      FlSpot(2021, 35),
                      FlSpot(2022, 45),
                      FlSpot(2023, 55),
                    ],
                    isCurved: true,
                    barWidth: 3,
                    color: Colors.red,
                    belowBarData: BarAreaData(show: true, color: Colors.red.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}