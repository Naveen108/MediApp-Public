import 'package:flutter/material.dart';
import 'package:mediapp/widgets/box_button.dart';
import 'package:mediapp/widgets/input_text_form_field.dart';
import 'package:mediapp/widgets/input_pass_form_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => new _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  String _userName;
  String _password;
  bool rememberPassword;
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

  //handling error the change doesn't reverts
  void handleRadioButton() {
    setState(() {
      if (rememberPassword == false) {
        rememberPassword = true;
      } else {
        rememberPassword = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white70,
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
                    'Welcome back!',
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                            top: 0.0,
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
                              errortext: "Enter password",
                              errorcheck: "",
                              onSave: (val) => _password = val,
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                    ),
                                    child: Radio(
                                      onChanged: (bool value) {
                                        handleRadioButton();
                                      },
                                      value: false,
                                      groupValue: rememberPassword,
                                      activeColor:
                                          Color.fromRGBO(59, 210, 159, 1.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 25.0,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Remember me',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 25.0,
                            ),
                            child: InkWell(
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                    color: Color.fromRGBO(59, 210, 159, 1.0),
                                    fontSize: 12.0),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Center(
                          child: BoxButton(
                            width: screenSize.width / 1.1,
                            height: 50.0,
                            elevation: 0.0,
                            buttonName: 'LOGIN',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: Text(
                              'New user ?',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: InkWell(
                              child: Text(
                                'Signup?',
                                style: TextStyle(
                                    color: Color.fromRGBO(59, 210, 159, 1.0),
                                    fontSize: 12.0),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/signUp');
                              },
                            ),
                          ),
                        ],
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
