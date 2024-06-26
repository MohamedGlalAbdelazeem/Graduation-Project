import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class MyHomePage1 extends StatefulWidget {
  MyHomePage1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage1> {
  // This is a list of dummy stocks. You can replace it with your own data from an API.
  final List<Stock> stocks = [
    Stock(symbol: 'USD', value: 13.60, change: -0.51, color: Colors.red),
   // Stock(symbol: 'Russell 2000 Index', value: 1947.45, change: 0.53, color: Colors.green),
    Stock(symbol: 'SPX', value: 15579.82, change: -0.11, color: Colors.red),
    Stock(symbol: 'SLV', value: 4945.09, change: 0.046, color: Colors.green),
    Stock(symbol: 'EUT', value: 38465.45, change: 0.22, color: Colors.green),
  ];

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
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stocks.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Text(
                    stocks[index].symbol,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    stocks[index].value.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    stocks[index].change > 0 ? Icons.arrow_upward : Icons.arrow_downward,
                    color: stocks[index].color,
                  ),
                  Text(
                    stocks[index].change.toStringAsFixed(2) + '%',
                    style: TextStyle(
                      fontSize: 16,
                      color: stocks[index].color,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// This is a class that represents a stock with its symbol, value, change, and color.
class Stock {
  final String symbol;
  final double value;
  final double change;
  final Color color;

  Stock({
    required this.symbol,
    required this.value,
    required this.change,
    required this.color,
  });
}