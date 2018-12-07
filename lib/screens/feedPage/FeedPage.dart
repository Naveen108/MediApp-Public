import 'package:flutter/material.dart';
import 'package:mediapp/data/data.dart';
import 'package:mediapp/screens/listofClinic/index.dart';
import 'package:mediapp/screens/listofFirstAid/index.dart';
import 'package:mediapp/screens/listofMedicines/index.dart';
import 'package:mediapp/screens/listofSpecilisation/index.dart';
import 'package:mediapp/widgets/home_card.dart';
import 'package:mediapp/widgets/listof_items_widget.dart';
import 'package:mediapp/widgets/search_bar.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPage createState() => _FeedPage();
}

class _FeedPage extends State<FeedPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 50.0,
                            left: 0.0,
                            right: 30.0,
                          ),
                          child: Text(
                            'YOUR LOCATION',
                            style: TextStyle(color: Colors.grey, fontSize: 8.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5.0,
                              ),
                              child: Icon(
                                Icons.location_on,
                                size: 15.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                              ),
                              child: Text(
                                'NY City',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 11.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 5.0,
                              ),
                              child: InkWell(
                                child: Text(
                                  'Change',
                                  style: TextStyle(
                                      color: Color.fromRGBO(59, 210, 159, 1.0),
                                      fontSize: 12.0),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 50.0,
                              left: 200.0,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.shopping_cart),
                              onPressed: () {
                                //call here address screen
                              },
                            ),
                          ),
                        ])
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                    left: 30.0,
                    right: 30.0,
                    bottom: 30.0,
                  ),
                  child: SearchBar(
                    texttype: TextInputType.text,
                    hinttext: 'Search for anything',
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HomeCard(
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ListofSpecilisation(),
                              ));
                        },
                        cardIcon: Icon(Icons.person_pin),
                        cardTitle: 'Doctor',
                        cardDetail:
                            'You can schedule a meeting with the docotor you need.',
                        height: 130.0,
                        titleTopPad: 30.0,
                        titleFontSize: 18.0,
                      ),
                      HomeCard(
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ListofClinics(
                                      list: clinics,
                                    ),
                              ));
                        },
                        cardIcon: Icon(Icons.home),
                        cardTitle: 'Clinic',
                        cardDetail: 'Search for a clinic nearby you.',
                        height: 130.0,
                        titleTopPad: 30.0,
                        titleFontSize: 18.0,
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HomeCard(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ListofMedicines(),
                            ));
                      },
                      cardIcon: Icon(Icons.tab),
                      cardTitle: 'Buy medicine',
                      cardDetail: 'Getting medicines gets much more easier.',
                      height: 85.0,
                      titleTopPad: 5.0,
                      titleFontSize: 14.0,
                    ),
                    HomeCard(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ListofFristAid(),
                            ));
                      },
                      cardIcon: Icon(Icons.book),
                      cardTitle: 'First Aid',
                      cardDetail: 'Check for quick tips during an emergency.',
                      height: 85.0,
                      titleTopPad: 5.0,
                      titleFontSize: 14.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
