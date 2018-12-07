import 'package:flutter/material.dart';
import 'package:mediapp/widgets/box_button.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
            ),
            child: Center(
              child: Text(
                'MEDICARE',
                style: TextStyle(color: Colors.black, fontSize: 12.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
            ),
            child: Center(
              child: Image.asset("assets/Mediapplogo.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              right: 120.0,
            ),
            child: Center(
              child: Text(
                'Made for your medical \nnecessities',
                style: TextStyle(
                    color: Color.fromRGBO(59, 210, 159, 1.0), fontSize: 21.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
            ),
            child: Center(
              child: Image.asset("assets/Mediappdoc.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40.0,
              left: 30.0,
              right: 30.0,
            ),
            child: Center(
              child: BoxButton(
                width: screenSize.width / 1.0,
                height: 50.0,
                elevation: 0.0,
                buttonName: 'SIGNUP',
                onPressed: () => Navigator.pushNamed(context, '/signUp'),
                buttonTextStyle: TextStyle(fontSize: 14.0, color: Colors.white),
                textFieldColor: Color.fromRGBO(59, 210, 159, 1.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 30.0,
              right: 30.0,
            ),
            child: Center(
              child: BoxButton(
                width: screenSize.width / 1.0,
                height: 50.0,
                elevation: 0.0,
                buttonName: 'LOGIN',
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                buttonTextStyle: TextStyle(fontSize: 14.0, color: Colors.white),
                textFieldColor: Color.fromRGBO(59, 210, 159, 1.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
            ),
            child: Center(
              child: Text(
                'Terms & Conditions',
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
