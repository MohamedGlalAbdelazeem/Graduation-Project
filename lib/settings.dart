import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceTrackingPage extends StatelessWidget {
  List<Map<String, dynamic>> forecastData = [
  {'date': '2024-02-01', 'predictedPrice': 1500},
  {'date': '2024-02-02', 'predictedPrice': 1510},
  {'date': '2024-02-03', 'predictedPrice': 1495},
  ];
  // static const String priceRout = 'PriceTrackingPage';
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
                color: Colors.blue,
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
              title: Text('Rate Us'),
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
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            Text(
              'Chart for Gold Price Movements',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: true),
                  minX: 0,
                  maxX: 14,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 1),
                        FlSpot(2, 4),
                        FlSpot(3, 2),
                        FlSpot(4, 5),
                        FlSpot(5, 1),
                        FlSpot(6, 4),
                        FlSpot(7, 2),
                        FlSpot(8, 5),
                        FlSpot(9, 3),
                        FlSpot(10, 4),
                        FlSpot(11, 2),
                        FlSpot(12, 5),
                        FlSpot(13, 3),
                        FlSpot(14, 6),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
