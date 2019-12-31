import 'package:flutter/material.dart';

class TextFieldX extends StatefulWidget {
  final String hintText;
  final String labelText;
  final IconData icon;

  TextFieldX({this.hintText, this.labelText, this.icon}) {}

  @override
  _TextFieldXState createState() => _TextFieldXState();
}

class _TextFieldXState extends State<TextFieldX> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          fillColor: Colors.red,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          prefixIcon: widget.icon == null ? null : Icon(widget.icon),
        ),
      ),
    );
  }
}
