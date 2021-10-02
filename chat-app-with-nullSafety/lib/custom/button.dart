import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final dynamic onpress;
  final Color color;
  CustomButton(
      {required this.label, required this.onpress, required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
