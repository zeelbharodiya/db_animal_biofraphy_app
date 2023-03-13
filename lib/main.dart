import 'package:db_animal_biography_app/splashscreen.dart';
import 'package:db_animal_biography_app/views/screens/Detail_page.dart';
import 'package:db_animal_biography_app/views/screens/Mammalpage.dart';
import 'package:db_animal_biography_app/views/screens/farmpage.dart';
import 'package:db_animal_biography_app/views/screens/insectpage.dart';
import 'package:db_animal_biography_app/views/screens/petpage.dart';
import 'package:db_animal_biography_app/views/screens/seapage.dart';
import 'package:db_animal_biography_app/views/screens/wildpage.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "SplashScreen",
      routes: {
        '/' : (context) => HomePage(),
        'SplashScreen' : (context) => SplashScreen(),
        'Pet_Page' : (context) => Pet_Page(),
        'Farm_Page' : (context) => Farm_Page(),
        'Wild_Page' : (context) => Wild_Page(),
        'Mammal_Page' : (context) => Mammal_Page(),
        'Sea_Page' : (context) => Sea_Page(),
        'Insect_Page' : (context) => Insect_Page(),
        'Detail_Page' : (context) => Detail_Page(),
      },
    ),
  );
}