import 'package:flutter/material.dart';
import 'package:mediapp/widgets/search_bar.dart';

class ListofItemsWidget extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final list;
  final String pageTitle;
  final String searchHint;
  ListofItemsWidget({this.list, this.pageTitle, this.searchHint});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 89.0,
              width: screenSize.width,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 66.0,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100.0,
                        top: 10.0,
                      ),
                      child: Text(
                        pageTitle,
                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 30.0,
                right: 30.0,
                bottom: 10.0,
              ),
              child: SearchBar(
                texttype: TextInputType.text,
                hinttext: searchHint,
              ),
            ),
            SizedBox(
              height: screenSize.height / 2.0,
              width: screenSize.width,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
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
                          child: Text(list[index].medicineTitle),
                        ),
                      ))),
                  itemCount: list.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
