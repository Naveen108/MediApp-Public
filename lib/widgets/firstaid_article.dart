import 'package:flutter/material.dart';

class FirstAidArticleWidget extends StatelessWidget {
  final String articleTitle;
  final String articleDetail;
  FirstAidArticleWidget({this.articleTitle, this.articleDetail});
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
                'FIRST AID',
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
        ),
      ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35.0,
                    top: 25.0,
                  ),
                  child: Text(
                    articleTitle,
                    style: TextStyle(color: Colors.black, fontSize: 28.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 35.0,
                    right: 35.0,
                  ),
                  child: Text(
                    articleDetail,
                    style: TextStyle(color: Colors.black, fontSize: 11.0),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
