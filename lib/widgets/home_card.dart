import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String cardTitle;
  final String cardDetail;
  final Icon cardIcon;
  var ontap;
  final height;
  final titleTopPad;
  final titleFontSize;
  HomeCard(
      {this.cardTitle,
      this.cardDetail,
      this.cardIcon,
      this.ontap,
      this.height,
      this.titleTopPad,
      this.titleFontSize});
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;

    return Container(
      height: height,
      width: 150.0,
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          margin: const EdgeInsets.all(0.0),
          elevation: 4.0,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 150.0,
                height: height,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: titleTopPad,
                            left: 15.0,
                            right: 5.0,
                          ),
                          child: cardIcon,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: titleTopPad,
                          ),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              cardTitle,
                              style: TextStyle(
                                fontSize: titleFontSize,
                                fontFamily: 'Roboto',
                                color: Color(0xFF212121),
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                        left: 15.0,
                        right: 15.0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          cardDetail,
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 11.0,
                            fontFamily: 'Roboto',
                            color: Color(0xFF212121),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
