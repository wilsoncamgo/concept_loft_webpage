import 'package:concept_loft_webpage/services/analytics_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
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
