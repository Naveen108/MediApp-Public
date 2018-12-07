import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  var texttype;
  final String hinttext;
  final String errortext;
  final String errorcheck;
  var iconType;
  var onSave;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: TextFormField(
        autocorrect: false,
        keyboardType: texttype,
        onSaved: onSave,
        validator: (val) => val.length < 1 ? errortext : null,
        style: TextStyle(fontSize: 15.0, color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          hintText: hinttext,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(fontSize: 15.0, color: Colors.black45),
          contentPadding: const EdgeInsets.all(17.0),
        ),
      ),
    );
  }

  SearchBar(
      {this.texttype,
      this.hinttext,
      this.iconType,
      this.errortext,
      this.errorcheck,
      this.onSave});
}
