import 'package:flutter/material.dart';
import 'package:mediapp/screens/homePage/index.dart';
import 'package:mediapp/screens/landingPage/index.dart';
import 'package:mediapp/screens/listofMedicines/index.dart';
import 'package:mediapp/screens/loginPage/index.dart';
import 'package:mediapp/screens/signUpPage/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/signUp': (BuildContext context) => SignUpPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/homePage': (BuildContext context) => HomePage(),
    '/listofmedicines': (BuildContext context) => ListofMedicines(),
  };

  Routes() {
    runApp(MaterialApp(
      title: "Mediapp",
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: routes,
    ));
  }
}
