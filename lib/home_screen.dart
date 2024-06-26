import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/Currency.dart';
import 'package:untitled6/settings.dart';

import 'API Screen.dart';
import 'Results.dart';

class HomeScreen extends StatelessWidget {

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
      body: Stack(
        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 150), // مسافة للتأكد من عدم تغطية النص الذي يكتب على الصورة
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => API_Screen()),
                        );
                        // تنفيذ الإجراء الخاص بالزر الأول
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        minimumSize: Size(150, 150),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Gold karat 24',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Sell        Buy',
                            style: TextStyle(fontSize: 14.0,color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => API_Screen()),
                        );
                        // تنفيذ الإجراء الخاص بالزر الثاني
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        minimumSize: Size(150, 150),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Gold karat 21',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Sell        Buy',
                            style: TextStyle(fontSize: 14.0,color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // مسافة بين الصفوف
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => API_Screen()),
                        );
                        // تنفيذ الإجراء الخاص بالزر الثالث
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        minimumSize: Size(150, 150),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Gold karat 18',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Sell        Buy',
                            style: TextStyle(fontSize: 14.0,color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => API_Screen()),
                        );
                        // تنفيذ الإجراء الخاص بالزر الرابع
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        minimumSize: Size(150, 150),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Gold pound',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Sell        Buy',
                            style: TextStyle(fontSize: 14.0,color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
