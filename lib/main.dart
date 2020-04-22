import 'package:kawalcovid/Screens/CountryReportPage.dart';
import 'package:kawalcovid/Screens/countriesPage.dart';
import 'package:kawalcovid/Screens/homePage.dart';
import 'package:kawalcovid/Screens/infoPage.dart';
import 'package:kawalcovid/Screens/preventionPage.dart';
import 'package:kawalcovid/Screens/reportPage.dart';
import 'package:kawalcovid/Screens/symptomsPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Updates',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/reports': (context) => ReportPage(),
        '/symptoms': (context) => SymptomsPage(),
        '/prevention': (context) => PreventioPage(),
        '/countries': (context) => Countriespage(),
        '/countryReport': (context) => CountryReportPage(),
        '/info': (context) => InfoPage(),
      },
    );
  }
}
