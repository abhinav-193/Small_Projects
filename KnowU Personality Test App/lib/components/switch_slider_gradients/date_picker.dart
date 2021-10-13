import 'package:flutter/material.dart';

// ignore: camel_case_types
class date_picker extends StatefulWidget {
  @override
  _date_pickerState createState() => _date_pickerState();
}

// ignore: camel_case_types
class _date_pickerState extends State<date_picker> {
  DateTime selectedDate = DateTime.now();



  bool _value2 = false;

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
    void _value2Changed(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Your age will be public'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              // new Checkbox(value: _value1, onChanged: _value1Changed),
              new CheckboxListTile(
                value: _value2,
                onChanged: _value2Changed,
                title: new Text('Your age will be public'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Color(0xFF29ACF1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
