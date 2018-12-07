import 'package:flutter/material.dart';
import 'package:mediapp/models/doctors_class.dart';
import 'package:mediapp/widgets/box_button.dart';

class ClinicProfile extends StatelessWidget {
  final Doctor doctor;
  ClinicProfile({this.doctor});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 171.0,
              width: screenSize.width,
              child: Container(
                color: Color.fromRGBO(59, 210, 159, 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 171.0,
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
                                top: 65.0,
                                right: 10.0,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                right: 10.0,
                              ),
                              child: Text(
                                doctor.clinicName,
                                style: TextStyle(
                                    color: Color.fromRGBO(89, 91, 101, 1.0),
                                    fontSize: 20.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2.0,
                                right: 10.0,
                              ),
                              child: Text(
                                doctor.clinicAddress,
                                style: TextStyle(
                                    color: Color.fromRGBO(89, 91, 101, 1.0),
                                    fontSize: 11.0),
                                textAlign: TextAlign.center,
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
                                  image: new NetworkImage(doctor.doctorImage),
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
                  doctor.doctorName + ',\n' + doctor.doctorDetails,
                  style: TextStyle(
                      color: Color.fromRGBO(89, 91, 101, 1.0), fontSize: 11.0),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Center(
                    child: BoxButton(
                      width: 180.0,
                      height: 40.0,
                      elevation: 0.0,
                      buttonName: 'SCHEDULE A VISIT',
                      onPressed: () => Navigator.pushNamed(context, '/signUp'),
                      buttonTextStyle:
                          TextStyle(fontSize: 10.0, color: Colors.white),
                      textFieldColor: Color.fromRGBO(59, 210, 159, 1.0),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 100.0,
                    height: 80.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(58, 210, 159, 0.4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            doctor.doctorClients.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(89, 91, 101, 1.0),
                            ),
                          ),
                          Text(
                            'CLIENTS',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Color.fromRGBO(89, 91, 101, 1.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 80.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(58, 210, 159, 0.4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            doctor.doctorExperienceYears.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(89, 91, 101, 1.0),
                            ),
                          ),
                          Text(
                            'EXPERIENCE',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Color.fromRGBO(89, 91, 101, 1.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 80.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(58, 210, 159, 0.4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            doctor.doctorRating.toString() + '\/5',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(89, 91, 101, 1.0),
                            ),
                          ),
                          Text(
                            'REVIEW',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Color.fromRGBO(89, 91, 101, 1.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
