import 'package:flutter/material.dart';
import 'package:mediapp/models/medicine_item_class.dart';
import 'package:mediapp/widgets/box_button.dart';

class MedicineDetailsWidget extends StatelessWidget {
  final MedicineItem medicine;
  MedicineDetailsWidget({this.medicine});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 90.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: AppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Text(
                'ORDER MEDICINE',
                style: TextStyle(
                    color: Color.fromRGBO(89, 91, 101, 0.9), fontSize: 13.0),
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
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.only(bottom: 10.0),
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                          ),
                          child: Text(
                            medicine.medicineTitle,
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 30.0,
                          ),
                          child: Text(
                            medicine.prescription,
                            style: TextStyle(
                                color: Color.fromRGBO(89, 91, 101, 0.5),
                                fontSize: 13.0),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 30.0,
                            ),
                            child: SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: Image(
                                  fit: BoxFit.scaleDown,
                                  image: NetworkImage(medicine.medicineImage)),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 30.0, right: 30.0),
                          child: Text(
                            medicine.medicineDetail,
                            style: TextStyle(
                                color: Color.fromRGBO(89, 91, 101, 1.0),
                                fontSize: 13.0),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 23.0,
                            right: 23.0,
                            top: 2.0,
                            //bottom: 10.0,
                          ),
                          child: Container(
                            color: Color.fromRGBO(58, 210, 159, 1.0),
                            child: ExpansionTile(
                              backgroundColor: Colors.white,
                              key: PageStorageKey<String>(medicine.dosage),
                              title: Text(
                                'Dosage',
                                style: TextStyle(
                                  color: Color.fromRGBO(89, 91, 101, 1.0),
                                ),
                              ),
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    medicine.dosage,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromRGBO(89, 91, 101, 1.0),
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 23.0,
                            right: 23.0,
                            top: 2.0,
                          ),
                          child: Container(
                            color: Color.fromRGBO(58, 210, 159, 1.0),
                            child: ExpansionTile(
                              backgroundColor: Colors.white,
                              key:
                                  PageStorageKey<String>(medicine.interactions),
                              title: Text(
                                'Interactions',
                                style: TextStyle(
                                  color: Color.fromRGBO(89, 91, 101, 1.0),
                                ),
                              ),
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      medicine.interactions,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Color.fromRGBO(89, 91, 101, 1.0),
                                        fontSize: 11.0,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 23.0,
                            right: 23.0,
                            top: 2.0,
                          ),
                          child: Container(
                            color: Color.fromRGBO(58, 210, 159, 1.0),
                            child: ExpansionTile(
                              backgroundColor: Colors.white,
                              key:
                                  PageStorageKey<String>(medicine.instructions),
                              title: Text(
                                'Instructions',
                                style: TextStyle(
                                  color: Color.fromRGBO(89, 91, 101, 1.0),
                                ),
                              ),
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      medicine.instructions,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Color.fromRGBO(89, 91, 101, 1.0),
                                        fontSize: 11.0,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 23.0,
                            right: 23.0,
                            top: 2.0,
                          ),
                          child: Container(
                            color: Color.fromRGBO(58, 210, 159, 1.0),
                            child: ExpansionTile(
                              backgroundColor: Colors.white,
                              key: PageStorageKey<String>(medicine.warnings),
                              title: Text(
                                'Warnings',
                                style: TextStyle(
                                  color: Color.fromRGBO(89, 91, 101, 1.0),
                                ),
                              ),
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      medicine.warnings,
                                      style: TextStyle(
                                        color: Color.fromRGBO(89, 91, 101, 1.0),
                                        fontSize: 11.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 60.0,
                      ),
                      child: Center(
                        child: BoxButton(
                          width: 180.0,
                          height: 40.0,
                          elevation: 0.0,
                          buttonName: 'ADD TO CART',
                          onPressed: () =>
                              Navigator.pushNamed(context, '/signUp'),
                          buttonTextStyle:
                              TextStyle(fontSize: 10.0, color: Colors.white),
                          textFieldColor: Color.fromRGBO(59, 210, 159, 1.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 60.0,
                      ),
                      child: Center(
                        child: BoxButton(
                          width: 180.0,
                          height: 40.0,
                          elevation: 0.0,
                          buttonName: 'BUY NOW',
                          onPressed: () {
                            Navigator.of(context).pushNamed('/login');
                          },
                          buttonTextStyle:
                              TextStyle(fontSize: 10.0, color: Colors.white),
                          textFieldColor: Color.fromRGBO(59, 210, 159, 1.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
