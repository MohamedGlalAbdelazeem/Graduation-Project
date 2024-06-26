import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoldPricePage extends StatefulWidget {
  @override
  _GoldPricePageState createState() => _GoldPricePageState();
}

class _GoldPricePageState extends State<GoldPricePage> {
  List<Map<String, dynamic>> goldPrices = [
    {"date": "01/01/2024", "currentPrice": 1500, "previousPrice": 1450, "expectedPrice": 1550},
    {"date": "02/01/2024", "currentPrice": 1550, "previousPrice": 1520, "expectedPrice": 1580},
    {"date": "03/01/2024", "currentPrice": 1550, "previousPrice": 1520, "expectedPrice": 1580},
    {"date": "04/01/2024", "currentPrice": 1550, "previousPrice": 1520, "expectedPrice": 1580},
    {"date": "05/01/2024", "currentPrice": 1550, "previousPrice": 1520, "expectedPrice": 1580},
    // يمكنك إضافة المزيد من البيانات حسب الحاجة
  ];

  List<Map<String, dynamic>> filteredGoldPrices = [];

  @override
  void initState() {
    super.initState();
    filteredGoldPrices = List.from(goldPrices);
  }

  void filterByDate(String date) {
    setState(() {
      filteredGoldPrices = goldPrices
          .where((item) => item['date'].toLowerCase().contains(date.toLowerCase()))
          .toList();
    });
  }

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => filterByDate(value),
              decoration: InputDecoration(

              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredGoldPrices.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(' ${filteredGoldPrices[index]["date"]}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current price: ${filteredGoldPrices[index]["currentPrice"]}'),
                      Text('previous price: ${filteredGoldPrices[index]["previousPrice"]}'),
                      Text('Expected price: ${filteredGoldPrices[index]["expectedPrice"]}'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}