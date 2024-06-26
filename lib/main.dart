import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/home_screen.dart';
import 'package:untitled6/settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled6/LineChart.dart';
import 'API Screen.dart';
import 'firebase_options.dart';
import 'Register.dart';
import 'Results.dart';
import 'bottomNva.dart';
import 'Username.dart';
import 'Currency.dart';
import 'login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main()  async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Stock Ticker Demo',
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
      routes: {
        LoginScreen.homeRout : (context) => LoginScreen(),
        BottomNav.home2Rout : (context) => BottomNav(),
        'PriceTrackingPage' : (context) => PriceTrackingPage(),
      },
    );
  }
}

