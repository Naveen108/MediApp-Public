import 'package:flutter/material.dart';
import 'package:mediapp/data/data.dart';
import 'package:mediapp/widgets/medicine_details.dart';
import 'package:mediapp/widgets/search_bar.dart';

class ListofMedicines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        title: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Text(
            'ORDER MEDICINE',
            style: TextStyle(color: Colors.grey, fontSize: 13.0),
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
      body: Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: BoxDecoration(
            color: Colors.grey[100],
          ),
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 65.0,
                    width: screenSize.width,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                        top: 13.0,
                      ),
                      child: SearchBar(
                        texttype: TextInputType.text,
                        hinttext: 'Search for medicine',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height / 2.0,
                    width: screenSize.width,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) => (Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0.0,
                                    left: 35.0,
                                    right: 30.0,
                                    bottom: 5.0,
                                  ),
                                  child: Text(medicines[index].medicineTitle),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            MedicineDetailsWidget(
                                              medicine: medicines[index],
                                            ),
                                      ));
                                },
                              ),
                            )),
                        itemCount: medicines.length,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
