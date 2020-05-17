import 'package:flutter/material.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics())
      ],
      routes: {
        '/': (context) => LoginScreen(),
        '/topics': (context) => TopicsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/about': (context) => AboutScreen()
      },
      theme: ThemeData(
        fontFamily: 'Nunito',
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.black87
        ),
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 18.0),
          bodyText2: TextStyle(fontSize: 16.0),
          button: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
          headline1: TextStyle(fontWeight: FontWeight.bold),
          subtitle1: TextStyle(color: Colors.grey)
        )
      ),
      // home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}