import 'package:concept_loft_webpage/services/analytics_service.dart';
import 'package:flutter/material.dart';

import 'locator.dart';
import 'screens/home/main_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muebles Concept Loft',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      navigatorObservers: <NavigatorObserver>[
        locator<AnalyticsService>().getAnalyticsObserver(),
      ],
      routes: {
        '/': (context) => MainPage(),
        /*
        '/services': (context) => OurServices(),
        '/form': (context) => FormScreen(),
        '/contact': (context) => ContactUs(),
        */
      },
    );
  }
}
