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
      height: 48,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(24.0),
      //   boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black)],
      // ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hintText,
          labelText: widget.labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          prefixIcon: widget.icon == null ? null : Icon(widget.icon),
        ),
      ),
    );
  }
}
