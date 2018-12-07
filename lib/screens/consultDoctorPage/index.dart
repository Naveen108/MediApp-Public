import 'package:flutter/material.dart';
import 'package:mediapp/widgets/box_button.dart';

class ConsultDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 132.0,
            ),
            child: Center(
              child: Text(
                'Consult a doctor',
                style: TextStyle(color: Colors.grey, fontSize: 28.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 46.0,
            ),
            child: Center(
              child: Text(
                'Ut labore et dolore roipi mana aliqua. Enim \nadeop minim veeniam nostruklad',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 46.0,
            ),
            child: Center(
              child: BoxButton(
                width: 320.0,
                height: 40.0,
                elevation: 0.0,
                buttonName: 'GET FREE CONSULTANT',
                onPressed: () => Navigator.pushNamed(context, '/signUp'),
                buttonTextStyle: TextStyle(fontSize: 21.0, color: Colors.white),
                textFieldColor: Color.fromRGBO(59, 210, 159, 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
