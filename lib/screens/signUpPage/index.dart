import 'package:flutter/material.dart';
import 'package:mediapp/widgets/box_button.dart';
import 'package:mediapp/widgets/input_text_form_field.dart';
import 'package:mediapp/widgets/input_pass_form_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPage createState() => new _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  String _userName;
  String _password;
  String _phonenumber;
  void _perfomSingUp() {
    print('Signup called');
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
      _perfomSingUp();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
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
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 30.0,
                  ),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            left: 30.0,
                            right: 30.0,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: InputTextFormField(
                              texttype: TextInputType.text,
                              hinttext: "Full Name",
                              iconType: Icon(Icons.person),
                              errortext: "Enter name here",
                              errorcheck: "",
                              onSave: (val) => _userName = val,
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            left: 30.0,
                            right: 30.0,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: InputTextFormField(
                              texttype: TextInputType.text,
                              hinttext: "Userame",
                              iconType: Icon(Icons.person),
                              errortext: "Enter username here",
                              errorcheck: "",
                              onSave: (val) => _userName = val,
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            top: 15.0,
                            left: 30.0,
                            right: 30.0,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: InputPassFormField(
                              texttype: TextInputType.text,
                              hinttext: "Password",
                              iconType: Icon(Icons.vpn_key),
                              errortext: "Enter password again",
                              errorcheck: "",
                              onSave: (val) => _password = val,
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            top: 15.0,
                            left: 30.0,
                            right: 30.0,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: InputPassFormField(
                              texttype: TextInputType.text,
                              hinttext: "Repeat password",
                              iconType: Icon(Icons.vpn_key),
                              errortext: "Enter password",
                              errorcheck: "",
                              onSave: (val) => _password = val,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40.0,
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Center(
                          child: BoxButton(
                            width: screenSize.width / 1.1,
                            height: 50.0,
                            elevation: 0.0,
                            buttonName: 'SIGNUP',
                            onPressed: () {
                              _submit();
                              Navigator.pushNamed(context, '/homePage');
                            },
                            buttonTextStyle:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            textFieldColor: Color.fromRGBO(59, 210, 159, 1.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: Center(
                          child: Text(
                            '', //not needed
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                        ),
                      ),
                    ],
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
