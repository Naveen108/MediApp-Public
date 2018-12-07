import 'package:flutter/material.dart';

class InputPassFormField extends StatelessWidget {
  var texttype;
  final String hinttext;
  final String errortext;
  final String errorcheck;
  var iconType;
  var onSave;

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        //color: Colors.white,
        border: new Border(
          bottom: new BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: new TextFormField(
        autocorrect: false,
        keyboardType: texttype,
        onSaved: onSave,
        validator: (val) => val.length < 1 ? 'Input Password.' : null,
        style: new TextStyle(fontSize: 15.0, color: Colors.black),
        decoration: new InputDecoration(
          border: InputBorder.none,
          labelText: hinttext,
          labelStyle: new TextStyle(fontSize: 15.0, color: Colors.black45),
          contentPadding: const EdgeInsets.all(20.0),
        ),
      ),
    );
  }

  InputPassFormField(
      {this.texttype,
      this.hinttext,
      this.iconType,
      this.errortext,
      this.errorcheck,
      this.onSave});
}
