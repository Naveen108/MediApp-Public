import 'package:flutter/material.dart';
import 'package:mediapp/screens/appointmentsPage/index.dart';
import 'package:mediapp/screens/myOrderPage/index.dart';
import 'package:mediapp/screens/orders/index.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 151.0,
            width: screenSize.width,
            child: Container(
              color: Color.fromRGBO(59, 210, 159, 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 151.0,
                    width: screenSize.width / 2.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 35.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 70.0,
                              right: 10.0,
                            ),
                            child: Text(
                              'John Doe',
                              style: TextStyle(
                                  color: Color.fromRGBO(89, 91, 101, 1.0),
                                  fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              right: 10.0,
                            ),
                            child: Text(
                              'New York City,NY',
                              style: TextStyle(
                                  color: Color.fromRGBO(89, 91, 101, 1.0),
                                  fontSize: 11.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              right: 10.0,
                            ),
                            child: Text(
                              'EDIT PROFILE',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 151.0,
                    width: screenSize.width / 2.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 40.0,
                        bottom: 20.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://i.imgur.com/BoN9kdC.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
            width: screenSize.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
                right: 35.0,
                left: 35.0,
              ),
              child: Text(
                'Ut labore et dolore roipi mana aliqua. Enim adeop minim veeniam nostruklad',
                style: TextStyle(
                    color: Color.fromRGBO(89, 91, 101, 1.0), fontSize: 14.0),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 35.0 / 2,
              ),
              child: Text(
                'Appointments',
                style: TextStyle(
                  color: Color.fromRGBO(89, 91, 101, 1.0),
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(
                right: 30.0,
              ),
              child: Text(
                '2 appointments today',
                style: TextStyle(
                  color: Color.fromRGBO(89, 91, 101, 1.0),
                  fontSize: 9.0,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            onTap: () {
              //appointments page
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => AppointmentsPage(),
                  ));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0.0,
            ),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 35.0 / 2,
              ),
              child: Text(
                'My order',
                style: TextStyle(
                  color: Color.fromRGBO(89, 91, 101, 1.0),
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(
                right: 30.0,
              ),
              child: Text(
                '1 order delivering today',
                style: TextStyle(
                  color: Color.fromRGBO(89, 91, 101, 1.0),
                  fontSize: 9.0,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            onTap: () {
              //my order page order which are completed or coming
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyOrderPage(),
                  ));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0.0,
            ),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 35.0 / 2,
              ),
              child: Text(
                'My cart',
                style: TextStyle(
                  color: Color.fromRGBO(89, 91, 101, 1.0),
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Orders(),
                  ));
              //My cart showing order ready to purhcase
            },
          ),
        ],
      ),
    );
  }
}
