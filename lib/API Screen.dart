import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API_Screen extends StatefulWidget {
  const API_Screen({super.key});

  @override
  State<API_Screen> createState() => _API_ScreenState();
}

class _API_ScreenState extends State<API_Screen> {
  var list1 = [];
  var mytext = '';
  var SPXController = TextEditingController();
  var USOController = TextEditingController();
  var SLVController = TextEditingController();
  var EURController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
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
                title: Text('About US'),
                onTap: () {
                  // إغلاق النافذة المنبثقة وتنفيذ الإجراء المناسب
                  Navigator.pop(context);
                },
              ),
              // يمكنك إضافة المزيد من العناصر هنا
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: SPXController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'SPX',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                  suffixIcon: Icon(Icons.add_chart),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: USOController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'USO',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                  suffixIcon: Icon(Icons.monetization_on_outlined),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: SLVController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'SLV',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                  suffixIcon: Icon(Icons.auto_graph),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: EURController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'EUR',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                  suffixIcon: Icon(Icons.euro_rounded),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                onPressed: api1,
                color: Colors.blue,
                height: 40.0,
                child: Text(
                  'Submit' ,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                readOnly: true,
                controller: TextEditingController(text: mytext ) ,
                decoration: InputDecoration(
                  labelText: 'GOLD',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                  suffixIcon: Icon(Icons.auto_awesome_outlined),
                ),
              ),
          
          
          
            ],
          ),
        ),
      ),
    );
  }

// API connect
  void api1() async {
    final url = 'https://mo600804-goldaap.hf.space/api/predict';
    final uri = Uri.parse(url);
    var var1 = double.tryParse(SPXController.text) ?? 0.0;
    var var2 = double.tryParse(USOController.text) ?? 0.0;
    var var3 = double.tryParse(SLVController.text) ?? 0.0;
    var var4 = double.tryParse(EURController.text) ?? 0.0;
    var mybody = {
      'data': [
        var1,
        var2,
        var3,
        var4,
      ]
    };
    final res1 = await http.post(
      uri,
      headers: {
        'Content-type': 'application/json ',
      },
      body: json.encode(mybody),
    );
    setState(() {
      var mydata = jsonDecode(res1.body);
      mytext = mydata['data'][0].toString();
    });

    print(res1.body*47);
  }
}
