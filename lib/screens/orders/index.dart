import 'package:flutter/material.dart';
import 'package:mediapp/data/data.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 90.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.4,
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: AppBar(
            elevation: 0.4,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Text(
                'ORDERS',
                style: TextStyle(color: Colors.black, fontSize: 13.0),
              ),
            ),
            leading: IconButton(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  top: 20.0,
                ),
                icon: Icon(
                  Icons.arrow_back,
                  size: 20.0,
                ),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
      ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ]),
      ),
    );
  }
}
